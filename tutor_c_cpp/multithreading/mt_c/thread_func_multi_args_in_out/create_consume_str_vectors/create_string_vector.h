//
// Created by lh on 11/3/2024.
//


#ifndef CREATE_STRING_VECTOR_H
#define CREATE_STRING_VECTOR_H

typedef struct MyStrVector {
    int thIndex;
    int len;
    char **strArr;
} strVector_t;

int create_join_thread_createStringVector(int numThreads, const char stemStr[], const char separator[]);
void *createStringVector_thfunc(void *arg);
void printStringVector(const strVector_t *str_vec, const char start_str[], const char separator[]);

#endif //CREATE_STRING_VECTOR_H
