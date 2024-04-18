#include <stdio.h>
#include <signal.h>
#include <unistd.h>

volatile sig_atomic_t semaphore = 0; // Global semaphore variable

void sem_init(int status) {
    if (status == 1) {
        semaphore = 1; // Marked state (open)
    } else {
        semaphore = 0; // Not marked state (closed)
    }
}

void sem_down() {
    while (semaphore == 0) {
        kill(getpid(), SIGUSR1); // Send signal to self
        sigset_t set;
        sigemptyset(&set);
        sigaddset(&set, SIGUSR1);
        sigprocmask(SIG_BLOCK, &set, NULL); // Block SIGUSR1
        sigwait(&set, NULL); // Wait for SIGUSR1
        sigprocmask(SIG_UNBLOCK, &set, NULL); // Unblock SIGUSR1
    }
    semaphore = 0; // Mark semaphore as occupied
}

void sem_up() {
    semaphore = 1; // Release semaphore
}

int main() {
    // Example usage
    sem_init(1); // Initialize semaphore as open
    sem_down(); // Attempt to acquire semaphore
    // Critical section
    sem_up(); // Release semaphore
    return 0;
}
