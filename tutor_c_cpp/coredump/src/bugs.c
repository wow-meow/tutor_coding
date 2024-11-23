#include "bugs.h"
#include <stdlib.h> // malloc
#include <stdbool.h> // bool
#include <unistd.h> // sleep
#include <time.h>

/**
 * @brief This function will generate a segmentation fault after a random number of iterations
 * 
 * This function allocates memory for a good pointer and sets a bad pointer to NULL.
 * It then enters an infinite loop, generating random numbers between 0 and 254.
 * If the random number is 13, it attempts to write to the bad pointer, causing a segmentation fault.
 * Otherwise, it writes the random number to the good pointer.
 * 
 * @return 0 if successful
 */
int create_segfault()
{
    int rnum = 0;
    int *goodptr = malloc(sizeof(int)); // Allocate memory for good pointer
    int *badptr = NULL;                 // Bad pointer is NULL

    srand(time(NULL)); // Seed the random number generator with current time

    while (true)
    {
        rnum = rand() % 255; // Generate a random number between 0 and 254

        if (rnum == 13)
        {
            *badptr = rnum; // Attempt to write to a NULL pointer, causing a segmentation fault
        }
        else
        {
            *goodptr = rnum; // Write the random number to the allocated memory
        }

        printf("Random number: %d\n", rnum); // Print the generated random number
        usleep(10000); // Sleep for 10 milliseconds to slow down the loop
    }
    
    return 0;
}
