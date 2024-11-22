#include <stdio.h>
#include <stdlib.h> // malloc

#include "fill_array.h"

extern int g_iArr[];
extern int g_count;

int main()
{
    printf("== global: extern Vs static ==\n\n");

    printf("g_iArr at 0x%p\n", g_iArr);
    printf("g_count = %d\n", g_count);
    printArray(g_iArr, g_count);

    int len = 5;
    int *iArr = (int *)malloc(len * sizeof(int));
    int startIndex = 0;
    int err = 0;
    err = fillArray(iArr, len);
    if (err != 0)
    {
        fprintf_s(stderr, "error %d: Something wrong\n", err);
        exit(EXIT_FAILURE);
    }
    printArray(iArr, len);

    err = copyToGlobalArray(iArr, len, &startIndex);
    if (err != 0)
    {
        fprintf_s(stderr, "error %d: Something wrong\n", err);
        exit(EXIT_FAILURE);
    }
    printArray(g_iArr, g_count);
    printf("g_count = %d\n", g_count);

    err = copyToGlobalArray(iArr, len, &startIndex);
    if (err != 0)
    {
        fprintf_s(stderr, "error %d: Something wrong\n", err);
        exit(EXIT_FAILURE);
    }
    printArray(g_iArr, g_count);
    printf("g_count = %d\n", g_count);
    
    printStaticVars_in_fillArraySrcFile();
    
    free(iArr);
    return 0;
}
