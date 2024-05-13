// Mutex Example: Bank Account Simulation

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int balance;
    pthread_mutex_t lock;
} BankAccount;

BankAccount account;

// Function that simulates depositing money into the bank account
void* deposit(void* amount) {
    int amt = *((int*)amount);
    pthread_mutex_lock(&account.lock);
    account.balance += amt;
    printf("Deposited $%d, New Balance: $%d\n", amt, account.balance);
    pthread_mutex_unlock(&account.lock);
    return NULL;
}

// Function that simulates withdrawing money from the bank account
void* withdraw(void* amount) {
    int amt = *((int*)amount);
    pthread_mutex_lock(&account.lock);
    if (account.balance >= amt) {
        account.balance -= amt;
        printf("Withdrew $%d, New Balance: $%d\n", amt, account.balance);
    } else {
        printf("Failed to withdraw $%d, Insufficient Balance: $%d\n", amt, account.balance);
    }
    pthread_mutex_unlock(&account.lock);
    return NULL;
}

int main() {
    pthread_t threads[10];
    int amounts[] = {100, 50, 200, 100, 50, 100, 300, 200, 100, 50};

    // Initialize bank account
    account.balance = 1000;
    pthread_mutex_init(&account.lock, NULL);

    // Create threads for depositing and withdrawing
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            pthread_create(&threads[i], NULL, deposit, &amounts[i]);
        } else {
            pthread_create(&threads[i], NULL, withdraw, &amounts[i]);
        }
    }

    // Wait for all threads to finish
    for (int i = 0; i < 10; i++) {
        pthread_join(threads[i], NULL);
    }

    // Final account balance
    printf("Final Account Balance: $%d\n", account.balance);

    // Destroy the mutex
    pthread_mutex_destroy(&account.lock);

    return 0;
}
