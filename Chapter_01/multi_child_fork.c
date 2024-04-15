#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork(); // Create a new process
    
    if (pid == -1) {
        // Error handling if fork fails
        perror("fork");
        return 1;
    } else if (pid == 0) {
        // This is the child process
        printf("Child process\n");
    } else {
        // This is the parent process
        printf("Parent process\n");
    }

    return 0;
}
