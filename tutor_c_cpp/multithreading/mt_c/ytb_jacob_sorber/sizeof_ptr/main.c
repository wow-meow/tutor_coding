#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * Main function demonstrating memory allocation, pointer size,
 * and copying memory blocks using memcpy.
 */
int main(void)
{
    printf("== sizeof pointer ==\n\n");

    int len = 25; // Length of the integer array
    int *iptr; // Pointer to the integer array
    int size_block_heap = len * sizeof(*iptr); // Calculate size of the memory block on the heap
    iptr = (int *) malloc(size_block_heap); // Allocate memory on the heap for iptr
    int *iptr2 = (int *) malloc(size_block_heap); // Allocate memory on the heap for iptr2

    // Fill memory block in heap that iptr points to
    for (int i = 0; i < len; ++i) {
        iptr[i] = i;
    }

    int size_iptr = sizeof(iptr); // Size of the pointer iptr (8 bytes on most systems)
    int size_iptr2 = sizeof(iptr2); // Size of the pointer iptr2 (8 bytes on most systems)
    printf("sizeof iptr: %d\n", size_iptr);
    printf("sizeof iptr2: %d\n", size_iptr2);

    // Copy memory from iptr to iptr2 using the size of the pointer (only 8 bytes)
    memcpy(iptr2, iptr, size_iptr2);

    // Print contents of iptr2 (incomplete copy)
    printf("\niptr2: ");
    for (int i = 0; i < len; ++i) {
        printf("[%d]: %d, ", i, iptr2[i]);
    }
    printf("\n");

    // Copy memory from iptr to iptr2 using the full block size
    memcpy(iptr2, iptr, size_block_heap);

    // Print contents of iptr2 (complete copy)
    printf("\niptr2: ");
    for (int i = 0; i < len; ++i) {
        printf("[%d]: %d, ", i, iptr2[i]);
    }
    printf("\n");

    // Free allocated memory
    free(iptr);
    free(iptr2);
    return 0;
}
