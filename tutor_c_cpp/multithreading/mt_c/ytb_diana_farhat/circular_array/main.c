#include <stdio.h>

#include "using_global_indexes.h"
#include "passing_encapsulated_indexes.h"
#include "snellmans_blog.h"

int main(void)
{
    //printf("%lu\n", sizeof(int));

    //test_isFullEmpty_global(isFull_globalReadWriteIndex, isEmpty_globalReadWriteIndex);
    //test_isFullEmpty_global(isFull_globalCount, isEmpty_globalCount);

    //test_isFullEmptyCount(isFull_count, isEmpty_count);

    test_pushAndRetrieveSNCircle();

    return 0;
}
