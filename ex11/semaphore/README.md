
# <p align="center"> Semaphores </p>

Semaphores are a fundamental concept in computer science used for controlling access to a common resource by multiple processes in a concurrent system such as a multitasking operating system. They help manage concurrent operations without conflicts in shared environments. Here’s a more detailed explanation of their purpose and concept:

### Semaphores Purpose 

The primary purpose of semaphores is to manage concurrent access to shared resources by multiple processes or threads in software engineering, especially in operating systems. They are used to solve problems associated with synchronization, race conditions, and deadlock, which are common in multitasking and multi-user systems.

- **Synchronization**: Semaphores ensure that certain sections of the program are executed in the desired sequence.
- **Prevent Race Conditions**: They prevent scenarios where two or more processes are reading or writing some shared data and the final result depends on the sequence in which the access takes place.
- **Avoid Deadlocks**: By properly managing resource allocation among competing processes, semaphores can help in avoiding deadlock situations where two or more processes are waiting indefinitely for resources held by each other.

### Concept of Semaphores

Developed by Edsger Dijkstra in 1965, semaphores are abstract data types used in programming to control access to a common resource by multiple processes in a parallel programming or a distributed system. There are two main types of semaphores:

- **Binary Semaphore (Mutex)**: Acts as a lock that protects access to a single resource. A binary semaphore is initialized to 1, and it can either be free (1) or locked (0). It is used to implement mutual exclusion and guard critical sections against concurrent data access.
- **Counting Semaphore**: Generalizes the binary semaphore by maintaining a count that is initialized to the number of free identical resources available. Counting semaphores can manage access to a pool of resources.

#### How Semaphores Work

1. **Initialization**: A semaphore is initialized with a specific value. For binary semaphores, the value is typically 1 (indicating availability); for counting semaphores, it is initialized to the number of resources available.
   
2. **Acquire (Semaphore Down / Wait)**: A process or thread attempts to decrease the semaphore's value. If the semaphore's value is greater than zero, it is decremented, which means a resource is taken and the process can proceed. If the semaphore value is zero, the process must wait until a resource becomes free.

3. **Release (Semaphore Up / Signal)**: The process increases the semaphore's value when it is done using a resource, signaling that it is now available. If other processes are waiting, one of them will be allowed to acquire the resource.

Semaphores are critical for ensuring smooth operation and efficiency in systems where multiple processes access the same resources or data concurrently. They are implemented at the kernel level and are used extensively in operating systems, real-time systems, and other applications where resources need to be synchronized among competing processes or threads.

<br>

# <p align="center"> Semaphore Implementation Using Signals </p>

This repository contains a C program that implements a basic semaphore using signals for synchronization. The semaphore supports initialization, acquiring (down), and releasing (up) operations, utilizing the SIGUSR1 signal.

## Features

- **Semaphore Initialization**: Set the initial state of the semaphore to either open or closed.
- **Semaphore Acquire (Down)**: Acquire the semaphore, blocking if it is already acquired.
- **Semaphore Release (Up)**: Release the semaphore, allowing other processes to acquire it.

## Functions

- `void sem_init(int status)`: Initializes the semaphore to the specified status (1 for open, 0 for closed).
- `void sem_down()`: Acquires the semaphore, waiting if it is already occupied.
- `void sem_up()`: Releases the semaphore, signaling other waiting processes.

## Usage

To use the semaphore in a C program:

1. **Initialize the Semaphore**: Call `sem_init` with the desired initial state.
2. **Enter Critical Section**: Use `sem_down` to wait for and acquire the semaphore.
3. **Exit Critical Section**: Use `sem_up` to release the semaphore.

### Example

```c
int main() {
    // Initialize the semaphore to open
    sem_init(1);

    // Acquire the semaphore
    sem_down();
    // Critical section code goes here
    sem_up();

    return 0;
}
```

## Compilation and Running

Compile the program with:
```bash
gcc -o semaphore semaphore.c
```

Run the program with:
```bash
./semaphore
```

## Note

- The signal `SIGUSR1` is used for synchronization and is assumed to be unblocked by default.
- The program includes error checking for system calls and valid inputs.

## System Requirements

- A Unix-like operating system with support for standard C libraries and signal handling.
- GCC or another C compiler for compiling the program.

Ensure you adjust paths and filenames as per your specific setup if they differ.
