// Debug using Core Dump
// 1. Compile with -g flag
// 2. Run the program
// 3. Use gdb to debug
// 4. Run the program
    
#include <stdio.h> // printf
#include "bugs.h"

/**
 * @brief Main function
 * @return 0 if successful
 */
int main(void)
{
    printf("== Debug using Core Dump ==\n\n");
    
    create_segfault();
    
    return 0;
}
