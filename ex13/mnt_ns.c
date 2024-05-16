// Mount Namespace Management in Kernel
// This file contains the implementation of functions related to the management of mount namespaces within the kernel.
// The functions include initialization, duplication, allocation, and cleanup of mount namespaces, ensuring proper
// reference counting and unmounting of mounts. The necessary locking mechanisms are employed to ensure thread safety.

#include "types.h"
#include "defs.h"
#include "param.h"
#include "stat.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"
#include "fs.h"
#include "sleeplock.h"
#include "file.h"
#include "mount.h"
#include "namespace.h"
#include "mnt_ns.h"


struct {
    struct spinlock lock;
    struct mount_ns mount_ns[NNAMESPACE];
} mountnstable;

struct mount_list {
    struct mount mnt;
    struct mount_list *next;
};

void mount_nsinit() {

    initlock(&mountnstable.lock, "mountns");
    for(int i = 0 ; i < NNAMESPACE ; i++) {
        initlock(&mountnstable.mount_ns[i].lock, "mount_ns");
    }
}

struct mount_ns *mount_nsdup(struct mount_ns *mount_ns) {

    acquire(&mountnstable.lock);
    mount_ns->ref++;
    release(&mountnstable.lock);

    return mount_ns;
}

void
umountlist(struct mount_list *mounts) {

    while (mounts != 0) {
        struct mount_list *next = mounts->next;
        if (mounts->mnt.parent == 0) {
            // No need to unmount root -
            mounts->mnt.ref = 0;
        }
        else if (umount(&mounts->mnt) != 0) {
            panic("failed to umount upon namespace close");
        }
        mounts = next;
    }
}

void mount_nsleave(struct mount_ns *mount_ns) {
    // Acquire the lock for the mount namespace table to ensure thread safety
    acquire(&mountnstable.lock);

    // Check if the reference count of the mount namespace is 1
    if (mount_ns->ref == 1) {
        // Release the lock before unmounting the list of mounts
        release(&mountnstable.lock);

        // Unmount all mounts in the list
        umountlist(mount_ns->list_mounts);
        // Reset the list of mounts to NULL (or 0 in this case)
        mount_ns->list_mounts = 0;

        // Re-acquire the lock after unmounting
        acquire(&mountnstable.lock);
    }

    // Decrement the reference count of the mount namespace
    mount_ns->ref--;
    // Release the lock after updating the reference count
    release(&mountnstable.lock);
}

static struct mount_ns *allocmount_ns() {

    acquire(&mountnstable.lock);
    for(int i = 0 ; i < NNAMESPACE ; i++) {
        if (mountnstable.mount_ns[i].ref == 0 && mountnstable.mount_ns[i].list_mounts == 0) {
            struct mount_ns *mount_ns = &mountnstable.mount_ns[i];
            mount_ns->ref = 1;
            release(&mountnstable.lock);
            return mount_ns;
        }
    }
    release(&mountnstable.lock);

    panic("out of mount_ns objects");
}

struct mount_ns *copymount_ns() {

    struct mount_ns *mount_ns = allocmount_ns();
    mount_ns->list_mounts = copyactivemounts();
    mount_ns->root = getroot(mount_ns->list_mounts);
    return mount_ns;
}

struct mount_ns *newmount_ns() {

    struct mount_ns *mount_ns = allocmount_ns();
    return mount_ns;
}
