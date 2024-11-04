#include <stdio.h>
#include <pthread.h>
#include <stdlib.h> // malloc, free
#include <unistd.h> // sleep, usleep
#include <string.h> // strcpy, strlen
#include <errno.h>

#include "create_string_vector.h"
#include "duplicate_and_concatenate_string.h"

int main(void)
{
    /**
     * Unit Tests
     **/

    //return test_duplicateAndConcatenate();

    printf("== Pass in and return multiple arguments to / from a thread function ==\n");
    printf("== Create and Consume String Vectors ==\n");

    char name[] = "John";
    char separator[] = "_";

    int err = 0;

    err = create_join_thread_createStringVector(2, "Jerry", ".");
    //err = create_join_thread_createStringVector(2, name, separator);
    if (err != 0) {
        fprintf(stderr, "errcode %d: create_join_thread_createStringVector\n", err);
    }

    err = create_join_thread_duplicateAndConcatenate(2, "Tom", "-");
    //err = create_join_thread_duplicateAndConcatenate(2, name, separator);
    if (err != 0) {
        fprintf(stderr, "errcode %d: create_join_thread_createStringVector\n", err);
    }

    pthread_exit(NULL);
    return err;
}
