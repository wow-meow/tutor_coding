/**
 * [Templates in C - DEV Community](https://dev.to/noah11012/templates-in-c-5b94)
 * For this example, we'll be creating a generic vector using this macro templating mechanism.
 **/

#include <stdio.h>
#include "list.h"

int main(void) {
    printf("== Templates in C ==\n");

    List (int) list_of_ints = list_new(int);
    for (int i = 0; i < 9; ++i) {
        list_push(list_of_ints, i * 100);
    }
    printf("list capacity: %d\n", list_of_ints->capacity);

    for (int i = 0; i < list_of_ints->length; ++i) {
        printf("[%d] %d, ", i, list_of_ints->buffer[i]);
    }
    putchar('\n');

    return 0;
}
