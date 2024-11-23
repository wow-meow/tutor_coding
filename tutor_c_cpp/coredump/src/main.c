// Debug using Core Dump
// 1. Compile with -g flag
// 2. Run the program
// 3. Use gdb to debug
// 4. Run the program

/**
 * On win10, in msys2 mintty, compile a C program and run the output executable. 
 * It showed that a segmentation fault occurred. 
 * No "core dump" info was printed out. 
 * How to debug a C project using core dump on Win 10?
 */

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
