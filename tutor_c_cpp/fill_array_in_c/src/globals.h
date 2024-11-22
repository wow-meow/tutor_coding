#ifndef GLOBALS_H
#define GLOBALS_H

// macro defined variables are constants and global
#define LEN_GIARR 10

/**
 * extern keyword means that the variable is defined in another file
 */

// Declaration of the global variable, no memory allocation
extern int g_count; 
extern const int g_LenGIArr;

// Declaration of the global array, no memory allocation
extern int g_iArr[];

#endif // GLOBALS_H
