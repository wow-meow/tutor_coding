//
// Created by lh on 11/3/2024.
//

#include "duplicate_and_concatenate_string.h"

#include "create_string_copies.h"

#include <stdio.h>
#include <stdlib.h> // malloc, free
#include <string.h> // strcpy, strlen
#include <pthread.h>
//#include <unistd.h> // sleep, usleep
//#include <errno.h>

/**
 * @return int
 *
 * TODO: generalize this thread function by using a function pointer
 */
int create_join_thread_duplicateAndConcatenate(int numThreads, const char stemStr[], const char separator[])
{
    pthread_t tids[numThreads] = {};
    printf("\npthread_t tid[%d]: (init)\n", numThreads);
    for (int i = 0; i < numThreads; ++i) {
        printf("[%d] : %llu\n", i, tids[i]);
    }

    // thread attribute
    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);

    /**
     * - create threads
     * - let each thread run a single thread function whose input argument is explicited specified
     **/

    param_t params[numThreads] = {};
    printf("\nvecParam_t params[%d]: (init)\n", numThreads);
    for (int i = 0; i < numThreads; ++i) {
        printf("[%d] : thIndex: %d, numCopies: %d\n",
            i, params[i].thIndex, params[i].numCopies);
    }

    for (int i = 0; i < numThreads; ++i) {
        // pass an arg struct to each thread function
        params[i].thIndex = i;
        params[i].numCopies = 2 * i + 1;

        /**
         * direct assignment of {char *} pointer,
         * highly likely to access the read-only memory
         * --> Segmentation Fault
         **/
        //params[i].stemStr = stemStr;
        //params[i].separator = separator;

        params[i].stemStr = malloc((1 + strlen(stemStr)) * sizeof(char));
        strcpy(params[i].stemStr, stemStr);
        params[i].separator = malloc((1 + strlen(separator)) * sizeof(char));
        strcpy(params[i].separator, separator);

        printf("\n[Main Thread] for-loop iteration %d: Creating Thread %d (thIndex) ...\n"
               "numCopies: %d, stemStr: %s, separator: %s\n",
            i, params[i].thIndex,
            params[i].numCopies, params[i].stemStr, params[i].separator);

        if (pthread_create(&tids[i], &th_attr, duplicateAndConcatenate_thfunc, &params[i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

    /**
     * If u allocate some heap memory in a thread function, for example, create some exit_status pointers
     * to store what the thread has created, u must deallocate them before pthread_exit(NULL).
     * Therefore, the exit_status pointers must be passed out from thread functions to the main thread.
     **/

    //pthread_exit(NULL); // test pthread_create !!
    //return 0;

    /**
     * - join threads
     * - fetch the exit status returned by each thread function
     * use an array of (void *) pointers to store the exit status of each thread
     **/

    void *rets[numThreads] = {};
    printf("\nvoid * rets[%d]:\n", numThreads);
    for (int i = 0; i < numThreads; ++i) {
        printf("[%d] : 0x%p\n", i, rets[i]);
    }

    for (int i = 0; i < numThreads; ++i) {
        printf("\n[Main Thread] Joining Thread %d and fetch the exit status ...\n", i);
        if (pthread_join(tids[i], &rets[i]) != 0) {
            perror("pthread_join");
            fprintf(stderr, "Errcode %d: %s : [Thread %d] pthread_join fails.\n",
                i, errno, strerror(errno));
            return 1;
        }
    }

    /**
     * consume what the threads return, use them in further operations
     **/

    for (int i = 0; i < numThreads; ++i) {
        string_t *str = (string_t *) rets[i];
        if (str == NULL) {
            fprintf(stderr, "Error: Thread %d returns a NULL exit status!\n", i);
            return 1;
        }
        printf("\n[Thread %d] has created a string (len %d) stored at 0x%p: %s\n",
           str->thIndex, str->len, str->data, str->data);
        printf("Hello, %s\n", str->data);
    }

    /**
     * Deallocate heap memory
     * */

    for (int i = 0; i < numThreads; ++i) {
        free(params[i].stemStr);
        free(params[i].separator);
        string_t *str = (string_t *) rets[i];
        free(str->data);
        free(str);
    }

    //pthread_exit(NULL);
    return 0;
}

/**
 * @param arg  (void *): It points to the input arguments of this thread function
 * @return a (void *) pointer: It points to exit_status of this thread, which is what this thread function has created.
 *
 */
void *duplicateAndConcatenate_thfunc(void *arg)
{
    param_t *param = (param_t *) arg;
    printf("\n>>> [Thread %d] in duplicateAndConcatenate_thread():\n"
        "stemStr: %s\n"
        "separator: %s\n",
        param->thIndex, param->stemStr, param->separator);

    string_t *res = (string_t *) malloc(sizeof(string_t));
    res->thIndex = param->thIndex;
    int err = duplicateAndConcatenate(&res->data, &res->len,
         param->stemStr, param->separator, param->numCopies);
    if (err != 0) {
        fprintf(stderr, "\nErrcode %d: duplicateAndConcatenate()\n", err);
        pthread_exit(NULL);
        return NULL;
    }

    printf("\n>>> [Thread %d] has created a string (len %d) at 0x%p: %s\n",
        res->thIndex, res->len, res->data, res->data);

    pthread_exit(res);
    //return NULL;
}

int duplicateAndConcatenate(char **res, int *ptr_len_res,
    const char src[], const char separator[], int n_copies)
{
    printf("\n>>> in duplicateAndConcatenate():\n"
           "src: %s, separator: %s, n_copies: %d\n",
           src, separator, n_copies);

    if (n_copies < 1) {
        printf("ERROR: n_copies ( = %d ) must be positive.\n", n_copies);
        fprintf(stderr, "ERROR: n_copies ( = %d ) must be positive.\n", n_copies);
        return 1;
    }

    int len = strlen(src) * n_copies + strlen(separator) * (n_copies - 1);
    *ptr_len_res = len;
    *res = (char *) malloc( sizeof(char) * (1 + len) ); // plus one for '\0'
    if (*res == NULL) {
        fprintf(stderr, "ERROR: No enough heap memory. len: %d\n", len);
        return 1;
    }

    for (int i = 0; i < n_copies; ++i) {
        if (i > 0) {
            if (strcat(*res, separator) == NULL) {
                fprintf(stderr, "ERROR: strcat(%s, %s)\n", *res, separator);
                return 1;
            }
        }
        if (i == 0) {
            if (strcpy(*res, src) == NULL) {
                fprintf(stderr, "ERROR: strcpy(%s, %s)\n", *res, src);
                return 1;
            }
        } else {
            if (strcat(*res, src) == NULL) {
                fprintf(stderr, "ERROR: strcat(%s, %s)\n", *res, src);
                return 1;
            }
        }
    }

    printf("\n>>> in duplicateAndConcatenate(): Results:\n"
           "*res: %s\nlen_res: %d\n", *res, *ptr_len_res);

    return 0;
}

int test_duplicateAndConcatenate(void)
{
    char *res;
    int len_res;
    int n_values[] = {-1, 0, 1, 3, 5, 8};
    int len_n_values = *(&n_values + 1) - n_values;
    for (int i = 0; i < len_n_values; ++i) {
        int n_copies = n_values[i];
        int err = duplicateAndConcatenate(&res, &len_res, "Tom", " - ", n_copies);
        if (err != 0) { continue; }
        printf("[%d] res: %s\n", n_copies, res);
        free(res);
    }

    return 0;
}
