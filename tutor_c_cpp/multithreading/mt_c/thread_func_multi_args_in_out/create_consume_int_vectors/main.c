#include <stdio.h>
#include <pthread.h>
#include <stdlib.h> // malloc, free
#include <unistd.h> // sleep, usleep
#include <string.h> // strcpy, strlen
#include <errno.h>

typedef struct MyVecParam {
    int th_index;
    int len;
} vecParam_t;

typedef struct MyIntVector {
    int th_index;
    int len;
    int *data; // int array
} intVector_t;

void *createIntVector(void *paramPtr);
void *printIntVector(void *intVecPtr);

int main(void)
{
    printf("== Pass in and return multiple arguments to / from a thread function ==\n\n");
    printf("== Create and Consume Integer Vectors ==\n\n");

    // thread attribute
    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    const int N_threads = 5;

    pthread_t tids[N_threads] = { };
    printf("pthread_t tid[i]: (init)\n");
    for (int i = 0; i < N_threads; ++i) {
        printf("[%d] : %llu, ", i, tids[i]);
    }
    printf("\n");

    vecParam_t params[N_threads] = { };
    printf("vecParam_t params[i]: (init)\n");
    for (int i = 0; i < N_threads; ++i) {
        printf("[%d] : th_index: %d, len: %d\n",
            i, params[i].th_index, params[i].len);
    }

    /**
     * - create threads
     * - let each thread run a single thread function whose input argument is explicited specified
     **/

    // producers create vectors
    for (int i = 0; i < N_threads; ++i) {
        params[i].th_index = i;
        params[i].len = 2 * i;
        if (pthread_create(&tids[i], &th_attr, createIntVector, &params[i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

    /**
     * pthread_join()
     * - will not fix the running order of threads
     * - joins threads
     * - fetch the exit status returned by each thread function
     * - use an array of (void *) pointers to store the exit status of each thread
     **/

    void *rets[N_threads] = { };
    printf("void * rets[i]:\n");
    for (int i = 0; i < N_threads; ++i) {
        printf("[%d] : 0x%p, ", i, rets[i]);
    }
    printf("\n");

    for (int i = 0; i < N_threads; ++i) {
        printf("[Main Thread] Joining Thread %d and fetch the exit status ...\n", i);
        if (pthread_join(tids[i], &rets[i]) != 0) {
            perror("pthread_join");
            fprintf(stderr, "Errcode %d: %s : [Thread %d] pthread_join fails.\n",
                i, errno, strerror(errno));
            return 1;
        }
    }

    // print what threads have created
    for (int i = 0; i < N_threads; ++i) {
        intVector_t *int_vec = (intVector_t *) rets[i];
        printf("> [Main Thread] Thread %d creates:\n", int_vec->th_index);
        for (int i = 0; i < int_vec->len; ++i) {
            printf("[%d] %d, ", i, int_vec->data[i]);
        }
        printf("\n");
    }

    printf("\n... The Creation of Integer Vectors Accomplished! "
           "Start to use multiple threads to print out vectors.\n");

    // consumers print out vectors
    for (int i = 0; i < N_threads; ++i) {
        // create threads to print out vectors in the reverse order
        if (pthread_create(&tids[N_threads - 1 - i], &th_attr, printIntVector,
            rets[i]) != 0) {
            perror("pthread_create");
            fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
            return 1;
        }
    }

    for (int i = 0; i < N_threads; ++i) {
        void *exit_status;
        if (pthread_join(tids[i], &exit_status) != 0) {
            perror("pthread_join");
            fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
            return 1;
        }

        sleep(1);
        int th_index = *((int *) exit_status);
        printf(">>> Thread %d prints the vector created by Thread %d\n", i, th_index);
        free(exit_status);
    }

    // deallocate heap memory
    for (int i = 0; i < N_threads; ++i) {
        free(((intVector_t *)rets[i])->data);
        free(rets[i]);
    }

    pthread_exit(NULL);
    return 0;
}

void *createIntVector(void *paramPtr) {
    vecParam_t param = *((vecParam_t *)paramPtr);
    intVector_t *pIntVec = malloc(sizeof(intVector_t));
    int th_index = param.th_index;
    int len = param.len;

    printf("> [Thread %d] is CREATING the integer vector.\n", th_index);
    pIntVec->th_index = th_index;
    pIntVec->len = len;
    if (len > 0) {
        pIntVec->data = malloc(sizeof(int) * len);
        for (int i = 0; i < len; ++i) {
            pIntVec->data[i] = 10 * th_index;
        }
    } else {
        pIntVec->data = NULL;
    }
    printf("--> [Thread %d] vector data stored at 0x%p.\n", th_index, pIntVec->data);
    pthread_exit(pIntVec);
    //return NULL;
}

// print what threads created
void *printIntVector(void *intVecPtr) {
    sleep(5);
    intVector_t *pIntVec = (intVector_t *) intVecPtr;
    printf("\n--> printIntVector(): [Thread %d] has created:\n", pIntVec->th_index);
    for (int i = 0; i < pIntVec->len; ++i) {
        printf("[%d] %d, ", i, pIntVec->data[i]);
    }
    printf("\n\n");

    // deallocate heap memory if they are not needed afterwards
    //free(pIntVec->data);
    //free(pIntVec);

    sleep(1);
    // configure what to return
    int *p_th_index = malloc(sizeof(int));
    *p_th_index = pIntVec->th_index;
    pthread_exit(p_th_index);
    //return NULL;
}
