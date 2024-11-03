//
// Created by lh on 11/3/2024.
//

#ifndef DUPLICATE_AND_CONCATENATE_STRING_H
#define DUPLICATE_AND_CONCATENATE_STRING_H

typedef struct MyString {
    int thIndex;
    int len;
    char *data;
} string_t;

int create_join_thread_duplicateAndConcatenate(int numThreads, const char stemStr[], const char separator[]);
void *duplicateAndConcatenate_thfunc(void *arg);
int duplicateAndConcatenate(char **res, int *ptr_len_res, const char src[], const char separator[], int n_copies);
int test_duplicateAndConcatenate(void);

#endif //DUPLICATE_AND_CONCATENATE_STRING_H
