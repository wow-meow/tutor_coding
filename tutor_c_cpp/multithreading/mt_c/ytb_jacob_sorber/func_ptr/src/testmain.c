#include <stdio.h>
#include "function_pointers.h"

int main(int argc, char **argv) 
{
    printf("== Function Pointer ==\n\n");
    
    int res1 = do_operation(add, 3, 4);
    int res2 = do_operation(mult, 3, 4);

    printf("3 + 4 = %d\n", res1);
    printf("3 * 4 = %d\n", res2);

    // Test error handling
    int res3 = do_operation(NULL, 3, 4);
    printf("NULL operation result: %d\n", res3);

    return 0;
}
