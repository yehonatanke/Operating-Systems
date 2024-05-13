/*
 * Description:
 * This program implements a basic semaphore using signals for synchronization.
 * The semaphore supports initialization, acquiring (down), and releasing (up) operations.
 * It uses the SIGUSR1 signal for synchronization.
 *
 * Functions:
 * - void sem_init(int status): Initializes the semaphore to a marked state (1 for open, 0 for closed).
 * - void sem_down(): Acquires (marks as occupied) the semaphore, waiting if necessary.
 * - void sem_up(): Releases (marks as open) the semaphore.
 *
 * Usage:
 * - Initialize the semaphore using sem_init.
 * - Use sem_down to acquire the semaphore before entering a critical section.
 * - Use sem_up to release the semaphore after exiting the critical section.
 *
 * Note:
 * - The signal SIGUSR1 is used for synchronization. It's assumed to be unblocked by default.
 * - Error checking is included for valid inputs and system calls.
 */


#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>


// Global variable for semaphore
volatile sig_atomic_t semaphore = 0;

// Initialize semaphore
void sem_init(int status) {

    if (status != 0 && status != 1) {
        fprintf(stderr, "Error: Invalid status value. Status must be 0 or 1.\n");
        exit(EXIT_FAILURE);
    }

    // Set semaphore based on status
    if (status == 1)
        semaphore = 1;
    else
        semaphore = 0;

    // Block signals
    sigset_t mask;
    sigemptyset(&mask);
    sigaddset(&mask, SIGUSR1);
    if (sigprocmask(SIG_BLOCK, &mask, NULL) == -1) {
        perror("sigprocmask");
        exit(EXIT_FAILURE);
    }
}

// Semaphore down operation
void sem_down() {
    // Wait until semaphore is open
    while (semaphore == 0)
        sigwait(NULL, NULL);
    // Mark semaphore as closed
    semaphore = 0;
}

// Semaphore up operation
void sem_up() {
    // Mark semaphore as open
    semaphore = 1;
    // Send signal to wake up waiting threads
    if (kill(getpid(), SIGUSR1) == -1) {
        perror("kill");
        exit(EXIT_FAILURE);
    }
}

int main() {

    // Initialize semaphore
    sem_init(1);

    // Example usage
    sem_down(); // Critical section
    // Critical section code here
    sem_up();

    return 0;
}
