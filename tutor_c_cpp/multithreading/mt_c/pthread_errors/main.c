#include <stdio.h>
#include <pthread.h>
//#include <errno.h>
#include <string.h>

void* thread_func(void* arg) {
    printf("In thread.\n");
    return NULL;
}

int main(void)
{
    printf("== Example of perror()  ==\n\n");

    //FILE *fp = fopen("nonexistent_file.txt", "r");
    //FILE *fp = fopen("../test.txt", "r");
    FILE *fp = fopen("test.txt", "r");
    if (fp == NULL) {
        perror("Error opening file");
        fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
        return 1;
    }
    fclose(fp);

    printf("== Handling erros of pthread methods ==\n\n");

    pthread_t tid1;
    void *ptr_invalid = (void *) 0x1234;

    // // Pass an invalid thread attribute
    // if (pthread_create(&tid1, (pthread_attr_t *) ptr_invalid, thread_func, NULL) != 0) {
    //     perror("pthread_create");
    //     fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
    //     return 1;
    // }

    // // Pass an invalid input argument of thread function
    // if (pthread_create(&tid1, NULL, thread_func, ptr_invalid) != 0) {
    //     perror("pthread_create");
    //     fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
    //     return 1;
    // }

    // no error calling pthread_create
    if (pthread_create(&tid1, NULL, thread_func, NULL) != 0) {
        perror("pthread_create");
        fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
        return 1;
    }

    // Pass an invalid thread ID
    if (pthread_join(*((pthread_t *) ptr_invalid), NULL)!= 0) {
        perror("pthread_join");
        fprintf(stderr, "[ERRCODE %d] %s\n", errno, strerror(errno));
        return 1;
    }

    pthread_exit(NULL);
    return 0;
}
