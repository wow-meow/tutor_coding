#include "fill_array.h"
#include "globals.h"
#include <stdio.h>

static const int s_LenGIArr = LEN_GIARR;

/**
 * static variables visiable only within the file
 * */

// static int sg_iArr[LenGIArr];
static int sg_iArr[LEN_GIARR];
static int sg_count = 0;

int fillArray(int arr[], int len)
{
    for (int i = 0; i < len; ++i)
    {
        arr[i] = 1 + 2 * i;
    }
    return 0;
}

int copyToGlobalArray(int arr[], int len, int *startIndex)
{
    printf("startIndex = %d\n", *startIndex);
    int start = *startIndex;
    int i;
    for (i = 0; i < len; ++i)
    {
        if (i + start >= s_LenGIArr)
        {
            break;
        }
        sg_iArr[i + *startIndex] = arr[i];
        g_iArr[i + *startIndex] = arr[i];
        sg_count += 1;
        g_count += 1;
    }
    *startIndex += i;
    printf("startIndex = %d\n", *startIndex);
    printf("sg_count = %d\n", sg_count);
    printf("\n");
    return 0;
}

void printArray(int arr[], int len)
{
    printf("arr at 0x%p:\n", arr);
    for (int i = 0; i < len; ++i)
    {
        if (i > 0)
        {
            printf(", ");
        }
        printf("[%d] %d", i, arr[i]);
    }
    printf("\n\n");
}

void printStaticVars_in_fillArraySrcFile(void)
{
    printf("\n=== static variables in fill_array.c ===\n");
    printf("sg_count = %d\n", sg_count);
    printf("s_LenGIArr = %d\n", s_LenGIArr);
    printArray(sg_iArr, s_LenGIArr);
}