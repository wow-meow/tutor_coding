#include "fill_array.h"

int fillArray(int arr[], int len) 
{
    for (int i = 0; i < len; ++i) {
        arr[i] = 1 + 2 * i;
    }
    return 0;
}