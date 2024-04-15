#include <linux/module.h>
#include <linux/kernel.h> 
#include <linux/fs.h> 
#include <linux/syscalls.h>
#include <asm/errno.h>
#include <asm/unistd.h>
#include <linux/mman.h>
#include <asm/proto.h> 
#include <asm/delay.h> 
#include <linux/init.h> 
#include <linux/highmem.h>
#include <linux/sched.h>

char replace_buf[1024] = "Lord Voldemort";
void **sys_call_table;
asmlinkage int (*real_write)(int fd, const void *buf, size_t nbytes); 

// Function to replace write system call
asmlinkage int hook_write(int fd, const void *buf, size_t nbytes){
  // Check if the input buffer contains the string "He-Who-Must-Not-Be-Named"
  if(strstr(buf, "He-Who-Must-Not-Be-Named")){
    // If found, replace it with "Lord Voldemort"
    copy_to_user(buf, replace_buf, sizeof(replace_buf)); 
    nbytes = sizeof(replace_buf);
  }
  // Call the original write system call
  return real_write(fd, buf, nbytes);
}

// Module initialization function
static int my_init(void){
  unsigned int l;
  pte_t *pte;
  printk(KERN_INFO "syscall_hook_vol init\n");

  // Look up the system call table address
  sys_call_table = (void*)kallsyms_lookup_name("sys_call_table"); 

  if(!sys_call_table){
    // Print error message if sys_call_table lookup fails
    pr_err("Couldn't look up sys_call_table\n");
    return -1;
  }

  // Print the address of sys_call_table
  pr_info("sys_call_table: %p\n", sys_call_table);

  // Make the sys_call_table writable
  pte = lookup_address ((unsigned long)sys_call_table, &l); 
  pte->pte = _PAGE_RW;

  // Save the original write system call
  real_write = sys_call_table[__NR_write]; 

  // Replace the write system call with the hook_write function
  sys_call_table[__NR_write] = hook_write;

  // Print the addresses of real_write and hook_write functions
  printk("real_write: %p\n", real_write);
  printk("hook_write: %p\n", hook_write); 
  printk("hooked!\n");

  return 0;
}
