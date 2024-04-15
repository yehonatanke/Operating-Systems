#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    
    if (pid == -1) {
        perror("fork");
        return 1;
    } else if (pid == 0) {
        printf("Child process\n");
    } else {
        printf("Parent process\n");
        // Wait for the child process to finish
        wait(NULL);
    }

    return 0;
}
