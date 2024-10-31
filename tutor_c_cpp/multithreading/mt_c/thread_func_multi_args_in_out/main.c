#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
//#include <stdlib.h> // malloc

typedef struct myParamIntVec {
    int th_index;
    int len;
} paramIntVec_t;

typedef struct myIntegerVector {
    int th_index;
    int len;
    int *data; // int array
} intVec_t;

void *createIntVector(void *paramPtr);
void *printIntVector(void *intVecPtr);

int main(void)
{
    //printf("== Showcase when pthread methods fail ==\n\n");
    printf("== Pass in and return multiple arguments to / from a thread function ==\n\n");

    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    pthread_t tid1;
    if (pthread_create(&tid1, (pthread_attr_t *)0xffffffff, NULL, NULL) != 0) {
        perror("pthread_create");
        return 1;
    }

    const int N_threads = 5;
    pthread_t tids[N_threads];
    paramIntVec_t param[N_threads];

    // producers create vectors
    for (int i = 0; i < N_threads; ++i) {
        param[i].th_index = i;
        param[i].len = 2 * i;
        if (pthread_create(&tids[i], &th_attr, createIntVector, &param[i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

    /**
     * pthread_join() will not fix the running order of threads
     * */

    void *resPtrs[N_threads];
    for (int i = 0; i < N_threads; ++i) {
        if (pthread_join(tids[i], &resPtrs[i]) != 0) {
            perror("pthread_join");
            return 1;
        }

        // print what threads have created
        intVec_t *pIntVec = (intVec_t *) resPtrs[i];
        printf("> Thread %d creates:\n", pIntVec->th_index);
        for (int i = 0; i < pIntVec->len; ++i) {
            printf("[%d] %d, ", i, pIntVec->data[i]);
        }
        putchar('\n');

        // dealloc heap memory if they are not needed afterwards
        //free(pIntVec->data);
        //free(pIntVec);
    }

    printf("\n... The Creation of Integer Vectors Accomplished! "
           "Start to use multiple threads to print out vectors.\n");

    // consumers print out vectors
    for (int i = 0; i < N_threads; ++i) {
        if (pthread_create(&tids[i], &th_attr, printIntVector,
            resPtrs[N_threads - 1 - i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

    for (int i = 0; i < N_threads; ++i) {
        void *res;
        if (pthread_join(tids[i], &res) != 0) {
            perror("pthread_join");
            return 1;
        }
        int th_index = *((int *) res);
        printf(">>> [Thread %d] finishes printing the vector created by Thread %d\n", i, th_index);
        free(res);
    }

    // de-allocate heap memory
    for (int i = 0; i < N_threads; ++i) {
        free(((intVec_t *)resPtrs[i])->data);
        free(resPtrs[i]);
    }

    pthread_exit(NULL);
    return 0;
}

void *createIntVector(void *paramPtr) {
    paramIntVec_t param = *((paramIntVec_t *)paramPtr);
    intVec_t *pIntVec = malloc(sizeof(intVec_t));
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
    intVec_t *pIntVec = (intVec_t *) intVecPtr;
    printf("\n--> printIntVector(): [Thread %d] has created:\n", pIntVec->th_index);
    for (int i = 0; i < pIntVec->len; ++i) {
        printf("[%d] %d, ", i, pIntVec->data[i]);
    }
    printf("\n\n");

    // dealloc heap memory if they are not needed afterwards
    //free(pIntVec->data);
    //free(pIntVec);

    // configure what to return
    int *p_th_index = malloc(sizeof(int));
    *p_th_index = pIntVec->th_index;
    pthread_exit(p_th_index);
    //return NULL;
}
