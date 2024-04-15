| System Call   | Description                               | Example                                                         |
|:---------------:|-------------------------------------------|-----------------------------------------------------------------|
| fork()        | Create a new process.                     | pid_t pid = fork(); if (pid == 0) { /* Child process */ } else if (pid > 0) { /* Parent process */ } else { /* Error */ } |
| execve()      | Execute a program.                        | char *args[] = {"ls", "-l", NULL}; execve("/bin/ls", args, NULL); |
| exit()        | Terminate the calling process.            | exit(0);                                                        |
| open()        | Open a file or device.                    | int fd = open("file.txt", O_RDONLY);                           |
| read()        | Read from a file descriptor.              | char buffer[1024]; ssize_t bytes_read = read(fd, buffer, sizeof(buffer)); |
| write()       | Write to a file descriptor.               | const char *message = "Hello, world!\n"; ssize_t bytes_written = write(fd, message, strlen(message)); |
| close()       | Close a file descriptor.                  | close(fd);                                                      |
| waitpid()     | Wait for a child process to terminate.    | waitpid(pid, &status, 0);                                      |
| kill()        | Send a signal to a process.               | kill(pid, SIGTERM);                                             |
| getpid()      | Get the process ID of the calling process.| pid_t pid = getpid();                                           |
| getuid()      | Get the user ID of the calling process.   | uid_t uid = getuid();                                           |
| getgid()      | Get the group ID of the calling process.  | gid_t gid = getgid();                                           |
