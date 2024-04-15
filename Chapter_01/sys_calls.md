| System Call   | Description                               | Example                                                         |
|:---------------:|:-------------------------------------------:|-----------------------------------------------------------------|
| fork()        | Create a new process.                     | pid_t pid = fork(); <br> if (pid == 0) {/* Child process */ } <br> else if (pid > 0) { /* Parent process */ } <br> else { /* Error */ } |
| execve()      | Execute a program.                        | char *args[] = {"ls", "-l", NULL};<br> execve("/bin/ls", args, NULL); |
| exit()        | Terminate the calling process.            | exit(0);                                                        |
| open()        | Open a file or device.                    | int fd = open("file.txt", O_RDONLY);                           |
| read()        | Read from a file descriptor.              | char buffer[1024];  <br> ssize_t bytes_read = read(fd, buffer, sizeof(buffer)); |
| write()       | Write to a file descriptor.               | const char *message = "Hello, world!\n"; <br>  ssize_t bytes_written = write(fd, message, strlen(message)); |
| close()       | Close a file descriptor.                  | close(fd);                                                      |
| waitpid()     | Wait for a child process to terminate.    | waitpid(pid, &status, 0);                                      |
| kill()        | Send a signal to a process.               | kill(pid, SIGTERM);                                             |
| getpid()      | Get the process ID of the calling process.| pid_t pid = getpid();                                           |
| getuid()      | Get the user ID of the calling process.   | uid_t uid = getuid();                                           |
| getgid()      | Get the group ID of the calling process.  | gid_t gid = getgid();                                           |
| chdir()         | Change the current working directory.        | chdir("/path/to/directory");                                    |
| mkdir()         | Create a new directory.                      | mkdir("/path/to/directory", 0755);                              |
| rmdir()         | Remove a directory.                          | rmdir("/path/to/directory");                                    |
| chmod()         | Change the permissions of a file.            | chmod("/path/to/file", 0644);                                   |
| unlink()        | Remove a file.                               | unlink("/path/to/file");                                        |
| rename()        | Rename a file.                               | rename("/path/to/oldfile", "/path/to/newfile");                 |
| stat()          | Get file status.                             | struct stat st; stat("/path/to/file", &st);                     |
| lseek()         | Move the read/write file offset.             | off_t new_offset = lseek(fd, offset, SEEK_SET);                 |
| dup()           | Duplicate a file descriptor.                 | int new_fd = dup(fd);                                           |
| dup2()          | Duplicate a file descriptor to a specific one.| int new_fd = dup2(fd, new_fd);                                  |
| pipe()          | Create an interprocess communication pipe.   | int pipefd[2]; pipe(pipefd);                                    |
| select()        | Synchronous I/O multiplexing.                | select(nfds, &readfds, &writefds, &exceptfds, &timeout);        |
| fcntl()         | File control.                                | fcntl(fd, F_SETFL, O_NONBLOCK);                                 |
| ioctl()         | Device control.                              | ioctl(fd, request, arg);                                        |
| mmap()          | Map files or devices into memory.            | void *addr = mmap(NULL, length, PROT_READ | PROT_WRITE, MAP_SHARED, fd, offset); |
| munmap()        | Unmap files or devices from memory.          | munmap(addr, length);                                           |
| sigaction()     | Set or get signal action.                    | struct sigaction act;  <br> sigaction(SIGINT, &act, NULL);            |
| sigprocmask()   | Change or examine signal mask.               | sigset_t mask; <br>  sigprocmask(SIG_BLOCK, &mask, NULL);             |
| sigpending()    | Examine pending signals.                     | sigset_t pending; sigpending(&pending);                         |
| sigsuspend()    | Suspend process until signal received.       | sigsuspend(&mask);                                              |
| pthread_create() | Create a new thread.                        | pthread_create(&thread, NULL, function, arg);                   |
| pthread_join()  | Wait for thread termination.                 | pthread_join(thread, &retval);                                  |
| pthread_mutex_lock() | Lock a mutex.                              | pthread_mutex_lock(&mutex);                                     |
| pthread_mutex_unlock() | Unlock a mutex.                            | pthread_mutex_unlock(&mutex);                                   |
| sem_open()      | Open a named semaphore.                     | sem_t *sem = sem_open("/mysemaphore", O_CREAT, 0644, 1);        |
| sem_wait()      | Decrement semaphore value.                  | sem_wait(sem);                                                  |
| sem_post()      | Increment semaphore value.                  | sem_post(sem);                                                  |
| sem_close()     | Close a named semaphore.                    | sem_close(sem);                                                 |
| sem_unlink()    | Remove a named semaphore.                   | sem_unlink("/mysemaphore");                                     |
