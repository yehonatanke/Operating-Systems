| Command        | Description                            | Usage Example                        |
|:--------------:|----------------------------------------|--------------------------------------|
| ls             | List directory contents                | `ls /home/user` <br> Lists the contents of the /home/user directory. |
| cd             | Change directory                       | `cd Documents` <br> Changes the current directory to Documents. |
| pwd            | Print working directory               | `pwd` <br> Prints the current working directory path. |
| mkdir          | Create a directory                     | `mkdir new_directory` <br> Creates a new directory named new_directory. |
| rm             | Remove files or directories            | `rm file.txt` <br> Removes the file named file.txt. |
| cp             | Copy files or directories              | `cp file.txt new_location/` <br> Copies the file file.txt to the directory new_location. |
| mv             | Move or rename files or directories    | `mv file.txt new_name.txt` <br> Renames file.txt to new_name.txt. |
| cat            | Concatenate and display file contents  | `cat file.txt` <br> Displays the contents of file.txt in the terminal. |
| grep           | Search text patterns in files          | `grep "pattern" file.txt` <br> Searches for the specified pattern in file.txt. |
| chmod          | Change file permissions                | `chmod 755 file.sh` <br> Changes the permissions of file.sh to 755 (read, write, execute for owner; read, execute for group and others). |
| chown          | Change file owner and group            | `chown user:group file.txt` <br> Changes the owner of file.txt to user and the group to group. |
| sudo           | Execute a command as superuser         | `sudo apt update` <br> Updates the package lists for upgrades and new packages using apt. |
| apt-get        | Package manager for installing software| `sudo apt-get install package_name` <br> Installs the specified package using apt-get. |
| dpkg           | Package manager for Debian packages    | `dpkg -i package.deb` <br> Installs the specified Debian package package.deb. |
| uname          | Print system information               | `uname -a` <br> Prints system information such as kernel version, architecture, and more. |
| ifconfig       | Network interface configuration        | `ifconfig` <br> Displays information about network interfaces. |
| ping           | Test network connectivity             | `ping google.com` <br> Sends ICMP echo requests to google.com to test network connectivity. |
| ssh            | Secure shell client                    | `ssh user@hostname` <br> Initiates an SSH connection to the specified hostname as the specified user. |


<br>


### Several Directory-Related Commands
| Command   | Description                              | Usage Example                        |
|:---------:|------------------------------------------|--------------------------------------|
| pwd       | Print working directory path             | `pwd` <br> Prints the current working directory path. |
| ls        | List directory contents                  | `ls /home/user` <br> Lists the contents of the /home/user directory. |
| cd        | Change directory                         | `cd Documents` <br> Changes the current directory to Documents. |
| mkdir     | Create a directory                       | `mkdir new_directory` <br> Creates a new directory named new_directory. |
| rmdir     | Remove an empty directory                | `rmdir directory_name` <br> Removes the empty directory named directory_name. |
| rm        | Remove files or directories              | `rm file.txt` <br> Removes the file named file.txt. |
| cp        | Copy files or directories                | `cp file.txt new_location/` <br> Copies the file file.txt to the directory new_location. |
| mv        | Move or rename files or directories      | `mv file.txt new_name.txt` <br> Renames file.txt to new_name.txt. |
| find      | Search for files in a directory hierarchy| `find /path/to/search -name "*.txt"` <br> Finds all files with .txt extension in the specified directory and its subdirectories. |


<br>

### Several File-Related Commands
| Command   | Description                              | Usage Example                        |
|:---------:|------------------------------------------|--------------------------------------|
| touch     | Create an empty file                     | `touch new_file.txt` <br> Creates a new empty file named new_file.txt. |
| cp        | Copy files or directories                | `cp file.txt new_location/` <br> Copies the file file.txt to the directory new_location. |
| mv        | Move or rename files or directories      | `mv file.txt new_name.txt` <br> Renames file.txt to new_name.txt. |
| rm        | Remove files or directories              | `rm file.txt` <br> Removes the file named file.txt. |
| cat       | Concatenate and display file contents    | `cat file.txt` <br> Displays the contents of file.txt in the terminal. |
| head      | Display the beginning of a file          | `head file.txt` <br> Displays the first few lines of file.txt. |
| tail      | Display the end of a file                | `tail file.txt` <br> Displays the last few lines of file.txt. |
| grep      | Search text patterns in files            | `grep "pattern" file.txt` <br> Searches for the specified pattern in file.txt. |
| chmod     | Change file permissions                  | `chmod 755 file.sh` <br> Changes the permissions of file.sh to 755. |
| chown     | Change file owner and group              | `chown user:group file.txt` <br> Changes the owner of file.txt to user and the group to group. |


<br>

### Redirecting Input/Output
| Command   | Description                                  | Usage Example                        |
|:---------:|----------------------------------------------|--------------------------------------|
| >         | Redirect output to a file                     | `ls > file_list.txt` <br> Redirects the output of the `ls` command to a file named `file_list.txt`. |
| >>        | Append output to a file                      | `echo "new line" >> file.txt` <br> Appends the text "new line" to the end of the file.txt. |
| <         | Redirect input from a file                   | `grep "pattern" < file.txt` <br> Searches for the specified pattern in the contents of file.txt. |
| |         | Redirect output of one command to another    | `ls -l | grep "file"` <br> Lists files in long format and then filters the output to show only lines containing "file". |


<br>

### Protecting Files and Directories, Altering Protections
| Command   | Description                                      | Usage Example                        |
|:---------:|--------------------------------------------------|--------------------------------------|
| chmod     | Change file permissions                          | `chmod 755 file.sh` <br> Changes the permissions of file.sh to 755 (read, write, execute for owner; read, execute for group and others). |
| chown     | Change file owner and group                      | `chown user:group file.txt` <br> Changes the owner of file.txt to user and the group to group. |
| chgrp     | Change group ownership of files                   | `chgrp group_name file.txt` <br> Changes the group ownership of file.txt to group_name. |
| umask     | Set default file permissions                     | `umask 022` <br> Sets the default file permissions for newly created files to 644 (rw-r--r--). |
| su        | Switch user                                      | `su username` <br> Switches the current user to the specified username. |
| sudo      | Execute a command as superuser                   | `sudo command` <br> Executes the specified command with superuser privileges. |


<br>

### GCC Compiler
| Command   | Description                                      | Usage Example                        |
|:---------:|--------------------------------------------------|--------------------------------------|
| gcc       | GNU Compiler Collection                          | `gcc -Wall -g -o output_file source_file.c` <br> Compiles source_file.c with warnings enabled (`-Wall`), debug information included (`-g`), and generates an executable named output_file. |
| g++       | GNU Compiler Collection (C++)                    | `g++ -Wall -g -o output_file source_file.cpp` <br> Compiles source_file.cpp (C++) with warnings enabled (`-Wall`), debug information included (`-g`), and generates an executable named output_file. |
| make      | Build automation tool                            | `make target` <br> Builds the specified target using instructions defined in a Makefile. |
| gdb       | GNU Debugger                                    | `gdb program` <br> Launches the GNU Debugger for debugging the specified program. |
| objdump   | Display information from object files           | `objdump -d executable` <br> Disassembles executable and displays its contents. |
| nm        | List symbols from object files                   | `nm executable` <br> Lists symbols (functions and variables) from the specified executable. |
| size      | List section sizes for object or archive files  | `size executable` <br> Displays the sizes of different sections in the specified executable. |

