//
// Created by lh on 11/7/2024.
//

#ifndef USING_GLOBAL_INDEXES_H
#define USING_GLOBAL_INDEXES_H

#include <stdbool.h>

bool isEmpty_globalReadWriteIndex(void);

bool isEmpty_globalCount(void);

bool isFull_globalReadWriteIndex(void);

bool isFull_globalCount(void);

typedef bool (*isFullEmptyGlobalFunc_t)(void);

int test_isFullEmpty_global(isFullEmptyGlobalFunc_t isFull, isFullEmptyGlobalFunc_t isEmpty);


#endif //USING_GLOBAL_INDEXES_H
