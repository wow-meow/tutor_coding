#include <stdio.h>
//#include <stdlib.h>
#include <pthread.h>
#include <stdint.h>
#include <stdlib.h>

#define BIG 1000000000UL

const uint32_t g_Big = 1000000000UL;
uint32_t g_count = 0;

// only one thread can access the lock at a time
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

void *count_to_big(void *arg)
{
    for (uint32_t i = 0; i < g_Big; ++i) {
        //pthread_mutex_lock(&lock); // pthread waits until it can get the lock
        ++g_count;
        //pthread_mutex_unlock(&lock); // pthread releases the lock
    }
    return NULL;
}

char * getHomePage(char * str, int * buflen);

int main(void)
{
    printf("== lecture 3: parallelism and concurrency ==\n\n");

    char *buf;
    int buflen;

    pthread_t tid1;
    pthread_create(&tid1, NULL, count_to_big, NULL);

    count_to_big(NULL);
    //count_to_big(NULL);

    pthread_join(tid1, NULL);

    buf = getHomePage("172.217.0.78", &buflen);

    printf("Done: Count=%u, Recved %d bytes", g_count, buflen);

    return 0;
}

#define MAXLINE 100

struct sockaddr_in {};

char *getHomePage(char *ipaddr, int *buflen)
{
    int sockfd, n;
    int sendbytes;
    struct sockaddr_in servaddr;
    char sendline[MAXLINE];
    char *buffer = malloc(MAXLINE);
    return buffer;
}
