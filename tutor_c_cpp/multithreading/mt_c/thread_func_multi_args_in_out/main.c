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
void *consumeIntVector(void *intVecPtr);

int main(void)
{
    printf("== Showcase when pthread methods fail ==\n\n");

    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    //pthread_t tid1;
    //if (pthread_create(&tid1, (pthread_attr_t *)0x1234, NULL, NULL) != 0) {
    //    perror("pthread_create");
    //    return 1;
    //}

    const int N_threads = 5;
    pthread_t tids_producer[N_threads];
    pthread_t tids_consumer[N_threads];
    paramIntVec_t param[N_threads];
    for (int i = 0; i < N_threads; ++i) {
        param[i].th_index = i;
        param[i].len = 2 * i;
        if (pthread_create(&tids_producer[i], &th_attr, createIntVector, &param[i]) != 0) {
            perror("pthread_create");
            return 1;
        }
    }

    for (int i = 0; i < N_threads; ++i) {
        void *res;
        if (pthread_join(tids_producer[i], &res) != 0) {
            perror("pthread_join");
            return 1;
        }
    }

    pthread_exit(NULL);
    return 0;
}

void *createIntVector(void *paramPtr) {
    paramIntVec_t param = *((paramIntVec_t *)paramPtr);
    intVec_t *res = malloc(sizeof(intVec_t));
    int th_index = param.th_index;
    int len = param.len;

    printf("> [Thread %d] is CREATING the integer vector.\n", th_index);
    res->th_index = th_index;
    res->len = len;
    if (len > 0) {
        res->data = malloc(sizeof(int) * len);
        for (int i = 0; i < len; ++i) {
            res->data[i] = 10 * th_index;
        }
    } else {
        res->data = NULL;
    }
    printf("--> [Thread %d] vector data stored at 0x%p.\n", th_index, res->data);
    pthread_exit(res);
    //return NULL;
}

void *consumeIntVector(void *intVecPtr) {
    // print what threads created
    intVec_t *pIntVec = (intVec_t *) intVecPtr;
    printf("> Thread %d creates:\n", pIntVec->th_index);
    for (int i = 0; i < pIntVec->len; ++i) {
        printf("[%d] %d, ", i, pIntVec->data[i]);
    }
    putchar('\n');

    free(pIntVec->data);
    free(pIntVec);

    pthread_exit(NULL);
    //return NULL;
}

