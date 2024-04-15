#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

// Function to clear the screen
void clrscr(){
    printf("\e[1;1H\e[2]");
}

// Function to print a string at a specified position
void printxy(int x, int y, char *str)
{
    printf("\033[%d; %dH%s\n", y, x, str);
}

// Structure to store position coordinates
typedef struct pos
{
    int x;
    int y;
} pos_t;

// Function to print a string at a position and advance it horizontally, with a delay
void print_and_advance(pos_t *p, char *str, long milliseconds)
{
    // Erase previous character at current position
    if(p->x > 0)
        printxy(p->x-1, p->y, " ");

    // Print the string at the current position
    printxy(p->x, p->y, str);

    // Advance to the next horizontal position
    if(++p->x > 60)
        p->x = 0;

    // Pause for a specified amount of time
    usleep(milliseconds);
}

int main(int argc, char **argv)
{
    long milliseconds = 6000;

    // Check if a command-line argument is provided for custom milliseconds
    if(argc > 1)
        milliseconds = atoi(argv[1]); 

    // Clear the screen
    clrscr();

    // Initialize positions for printing characters
    pos_t p1 = {0, 5};
    pos_t p2 = {0, 10};
    pos_t p[5] = { {0, 5}, {0, 6}, {0, 7}, {0, 8}, {0, 9} };

    // Infinite loop to continuously print and advance characters
    while(1)
    {
        // Loop through each position and print character, then advance
        for(int i = 0; i < 5; i++)
            print_and_advance(&p[i], "I", milliseconds);
    }

    return 0;
}
