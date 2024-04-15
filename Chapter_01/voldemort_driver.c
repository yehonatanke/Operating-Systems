#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME "voldemort"

static int major_number;
static char message[256] = "Lord Voldemort\n";
static int message_length = 15;
static int open_count = 0;

static int device_open(struct inode *inode, struct file *file) {
    if (open_count)
        return -EBUSY;
    open_count++;
    try_module_get(THIS_MODULE);
    return 0;
}

static int device_release(struct inode *inode, struct file *file) {
    open_count--;
    module_put(THIS_MODULE);
    return 0;
}

static ssize_t device_read(struct file *filp, char *buffer, size_t length, loff_t *offset) {
    int bytes_read = 0;
    if (*offset >= message_length)
        return 0;
    while (length && (*offset) < message_length) {
        put_user(message[(*offset)++], buffer++);
        length--;
        bytes_read++;
    }
    return bytes_read;
}

static struct file_operations fops = {
    .read = device_read,
    .open = device_open,
    .release = device_release
};

static int __init voldemort_init(void) {
    major_number = register_chrdev(0, DEVICE_NAME, &fops);
    if (major_number < 0) {
        printk(KERN_ALERT "Failed to register a major number\n");
        return major_number;
    }
    printk(KERN_INFO "Voldemort module has been loaded.\n");
    return 0;
}

static void __exit voldemort_exit(void) {
    unregister_chrdev(major_number, DEVICE_NAME);
    printk(KERN_INFO "Voldemort module has been unloaded.\n");
}

module_init(voldemort_init);
module_exit(voldemort_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("Voldemort Character Device Driver");
