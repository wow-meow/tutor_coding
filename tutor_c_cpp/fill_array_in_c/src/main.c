#include <stdio.h>
#include <stdlib.h> // malloc
#include "fill_array.h"

#define LEN_GIARR 10

static const int LenGIArr = LEN_GIARR;
int g_count;
//int g_iArr[LenGIArr];
int g_iArr[LEN_GIARR];

int copyToGlobalArray(int arr[], int len, int *startIndex) ;

int main()
{
    printf("\nHello, World!\n\n");

    int len = 5;
    int *iArr = (int *) malloc(len * sizeof(int));
    int startIndex = 0;
    int err = 0;
    err = fillArray(iArr, len);
    
    err = copyToGlobalArray(iArr, len, &startIndex);
    err = copyToGlobalArray(iArr, len, &startIndex);

    free(iArr);
    return 0;
}

int copyToGlobalArray(int arr[], int len, int *startIndex)
{
    for (int i = *startIndex; i < len; ++i) {
        if (i >= LenGIArr) { break; }
        g_iArr[i] = arr[i];
        *startIndex += 1;
        g_count += 1;
    }
    return 0;
}
