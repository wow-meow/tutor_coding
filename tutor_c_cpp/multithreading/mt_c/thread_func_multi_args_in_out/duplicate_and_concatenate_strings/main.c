#include <stdio.h>
#include <stdlib.h> // malloc, free
#include <pthread.h> // POSIX Thread Library
#include <unistd.h> // usleep, sleep
#include <string.h> // strlen, strcpy
#include <time.h>

//__thread int counter = 0;
//thread_local int counter = 0;

typedef struct MyString {
    int len;
    char *data;
} string_t;

void *sayHelloToSomeone_cstring(void *arg);
void *sayHelloToSomeone(void *arg);

int duplicateAndConcatenate(char **res, int *ptr_len_res,
    const char src[], const char separator[], int n_copies);

int main(void)
{
    printf("== Duplicate and Concatenate Strings - Yet Another Example ==\n\n");

    const int N_threads = 2;
    pthread_t tids[N_threads] = {};

    pthread_attr_t th_attr;
    pthread_attr_init(&th_attr);
    pthread_attr_setschedpolicy(&th_attr, SCHED_FIFO);

    /**
     * pthread_create
     **/

    // cstring, char array
    char* names_cstring[N_threads] = {}; // an array of names (string, char array)
    int nameLengths[N_threads] = {};
    for (int i = 0; i < N_threads; ++i) {
        int errnum = duplicateAndConcatenate(&names_cstring[i], &nameLengths[i],
            "Tom", " - ", 1 + i);
        if (errnum != 0) { return 1; }

        errnum = pthread_create(
            &tids[i], &th_attr, sayHelloToSomeone_cstring, &names_cstring[i]);
        free(names_cstring[i]);

        if (errnum != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", errnum, strerror(errnum));
            return 1;
        }
    }

    /**
     * pthread_join
     * */

    //char *ret_cstrings[N_threads] = {};
    void *ret_cstrings[N_threads] = {};
    for (int i = 0; i < N_threads; ++i) {
        int errnum = pthread_join(tids[i], &ret_cstrings[i]);
        if (errnum != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", errnum, strerror(errnum));
            return 1;
        }
    }

    /**
     * print out results
     **/

    for (int i = 0; i < N_threads; ++i) {
        char *res = (char *) ret_cstrings[i];
        printf("Thread %d said: %s\n", i, res);
    }

    /**
     * pthread_create
     **/

    // struct MyString, string_t
    string_t names[N_threads] = {}; // an array of names (string, char array)
    for (int i = 0; i < N_threads; ++i) {
        int err = 0;

        err = duplicateAndConcatenate(&names[i].data, &names[i].len,
            "Tom", " - ", 1 + i);
        if (err != 0) { return 1; }

        err = pthread_create(&tids[i], &th_attr, sayHelloToSomeone, &names[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }

        //free(names[i].data);

    }

    /**
     * pthread_join
     * */

    void *ret_strings[N_threads] = {};
    for (int i = 0; i < N_threads; ++i) {
        int err = pthread_join(tids[i], &ret_strings[i]);
        if (err != 0) {
            perror("pthread_create");
            fprintf(stderr, "errcode %d: %s\n", err, strerror(err));
            return 1;
        }
    }

    /**
     * print out results
     **/

    for (int i = 0; i < N_threads; ++i) {
        string_t *res = (string_t *) ret_strings[i];
        printf("Thread %d said: %s\n", i, res->data);
        free(res->data);
    }

    pthread_exit(NULL);
    return 0;
}

void *sayHelloToSomeone_cstring(void *arg)
{
    char *name = (char *) arg;
    printf("Hello, (name) %s!\n", name);

    char str_part1[] = "Hello, ";
    char str_part2[] = "!\n";
    int len_whole_str = strlen(str_part1) + strlen(name) + strlen(str_part2);
    char *res = (char *) malloc(sizeof(char) * (1 + len_whole_str));
    strcpy(res, str_part1);
    strcat(res, name);
    strcat(res, str_part2);
    printf("Say (res): %s\n", res);

    pthread_exit(res);
    //return NULL;
}

void *sayHelloToSomeone(void *arg)
{
    string_t *name = (string_t *) arg;
    char str_part1[] = "Hello, ";
    char str_part2[] = "!";
    int len_whole_str = strlen(str_part1) + name->len + strlen(str_part2);
    string_t *res = (string_t *) malloc(sizeof(string_t));
    res->data = (char *) malloc(sizeof(char) * (1 + len_whole_str));
    strcpy(res->data, str_part1);
    strcat(res->data, name->data);
    strcat(res->data, str_part2);

    printf("Hello, (name->data) %s!\n", name->data);
    printf("Say (res->data): %s\n", res->data);

    pthread_exit(res);
    //return NULL;
}

int duplicateAndConcatenate(char **res, int *ptr_len_res,
    const char src[], const char separator[], int n_copies)
{
    printf(">>> in duplicateAndConcatenate():\n");

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

    return 0;
}
