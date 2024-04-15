#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    
    if (pid == -1) {
        perror("fork");
        return 1;
    } else if (pid == 0) {
        printf("Child process\n");
        // Execute different code in child process
        printf("Child process executing different code\n");
    } else {
        printf("Parent process\n");
    }

    return 0;
}
