//
// Created by lh on 11/3/2024.
//

#include "create_string_vector.h"
#include <stdio.h>
#include "create_string_copies.h"
#include <pthread.h>
#include <stdlib.h> // malloc, free
#include <string.h> // strcpy, strlen
//#include <unistd.h> // sleep, usleep
//#include <errno.h>

/**
 *
 * @param numThreads
 * @param stemStr
 * @param separator
 * @return
 *
 * TODO: function pointer
 */
int create_join_thread_createStringVector(int numThreads, const char stemStr[], const char separator[])
{
    //const int N_threads = 5;
    pthread_t tids[numThreads] = {};
    printf("\npthread_t tid[%d]: (init)\n", numThreads);
    for (int i = 0; i < numThreads; ++i) {
        printf("[%d] : %llu\n", i, tids[i]);
    }

    // thread attribute
    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);

    param_t params[numThreads] = {};
    printf("\nvecParam_t params[%d]: (init)\n", numThreads);
    for (int i = 0; i < numThreads; ++i) {
        printf("[%d] : th_index: %d, n_copies: %d\n",
            i, params[i].thIndex, params[i].numCopies);
    }

    /**
     * - create threads
     * - let each thread run a single thread function whose input argument is explicited specified
     **/

    for (int i = 0; i < numThreads; ++i) {
        printf("\n[Main Thread] Creating Thread %d ...\n", i);
        // pass an arg struct to each thread function
        params[i].thIndex = i;
        params[i].numCopies = 2 * i + 1;

        // params[i].stemStr = stemStr;
        // params[i].separator = separator;

        params[i].stemStr = malloc((1 + strlen(stemStr)) * sizeof(char));
        strcpy(params[i].stemStr, stemStr);
        params[i].separator = malloc((1 + strlen(separator)) * sizeof(char));
        strcpy(params[i].separator, separator);

        if (pthread_create(&tids[i], &th_attr, createStringVector_thfunc, &params[i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

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
        strVector_t *str_vec = (strVector_t *) rets[i];
        if (str_vec == NULL) {
            fprintf(stderr, "Error: Thread %d returns a NULL exit status!\n", i);
            return 1;
        }
        printStringVector(str_vec, "Hello, ", params[i].separator);
    }

    /**
     * Deallocate heap memory
     * */

    for (int i = 0; i < numThreads; ++i) {
        strVector_t *str_vec = (strVector_t *) rets[i];
        for (int i = 0; i < str_vec->len; ++i) {
            free(str_vec->strArr[i]);
        }
        free(str_vec->strArr);
        free(str_vec);
    }

    pthread_exit(NULL);
    return 0;
}

void *createStringVector_thfunc(void *arg)
{
    param_t *param = (param_t *)arg;

    strVector_t *res = (strVector_t *) malloc(sizeof(strVector_t));
    res->thIndex = param->thIndex;
    res->len = param->numCopies;
    res->strArr = (char **) malloc(sizeof(char *) * param->numCopies);

    printf("\n[Thread %d] Creating a vector (len %d) of strings at 0x%p ...\n",
        res->thIndex, res->len, res->strArr);

    for (int i = 0; i < res->len; ++i) {
        char *str = param->stemStr;
        int strLen = strlen(str);

        res->strArr[i] = (char *) malloc(sizeof(char) * strLen);
        strcpy(res->strArr[i], str);
    }

    printf("\n>>> [Thread %d] has created a string (len %d) at 0x%p, first entry: %s\n",
        res->thIndex, res->len, res->strArr, res->strArr[0]);

    pthread_exit(res);
    //return NULL;
}

void printStringVector(const strVector_t *str_vec, const char start_str[], const char separator[])
{
    printf("\n[Thread %d] has created a vector of strings stored at 0x%p, vector len: %d\n",
           str_vec->thIndex, str_vec, str_vec->len);
    printf("%s", start_str);
    for (int i = 0; i < str_vec->len; ++i) {
        if (i > 0) {
            printf("%s", separator);
        }
        printf("%s", str_vec->strArr[i]);
    }
    printf("!\n");
}
