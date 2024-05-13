#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

// Mutex variable
pthread_mutex_t mutex;

// Shared variable
int shared_data = 0;

// Function that increments shared data
void* increment(void* arg) {
    int i;
    for (i = 0; i < 10000; i++) {
        // Lock the mutex before accessing the shared data
        pthread_mutex_lock(&mutex);
        shared_data++;
        // Unlock the mutex after accessing the shared data
        pthread_mutex_unlock(&mutex);
    }
    return NULL;
}

int main() {
    pthread_t t1, t2;

    // Initialize the mutex
    if (pthread_mutex_init(&mutex, NULL) != 0) {
        printf("Failed to initialize mutex\n");
        return 1;
    }

    // Create threads
    if (pthread_create(&t1, NULL, increment, NULL) != 0) {
        printf("Failed to create thread t1\n");
        return 1;
    }
    if (pthread_create(&t2, NULL, increment, NULL) != 0) {
        printf("Failed to create thread t2\n");
        return 1;
    }

    // Wait for threads to finish
    pthread_join(t1, NULL);
    pthreadjoin(t2, NULL);

    // Print the output
    printf("Final value of shared_data: %d\n", shared_data);

    // Destroy the mutex
    pthread_mutex_destroy(&mutex);

    return 0;
}
