//
// Created by lh on 11/7/2024.
//

#ifndef SNELLMANS_BLOG_H
#define SNELLMANS_BLOG_H

#include <stdbool.h>
#include "types.h"

typedef struct A A;
struct A {
    int a;
    int b;
};

typedef unsigned short uint16;

typedef struct PNCircle PNCircle;
struct PNCircle {
    PowerNotation *powNotNumbers;
    uint16 capacity;
    uint16 count;
    uint16 read_index;
    uint16 write_index;

    bool (*isEmpty)(const PNCircle *self);
    bool (*isFull)(const PNCircle *self);
    uint16 (*size)(const PNCircle *self);
    void *(*push)(PNCircle *self, PowerNotation *pn);
    void *(*retrieve)(PNCircle *self);
}; // ring array of power-notation numbers

uint16 mask(uint16 index, uint16 capacity);
uint16 increment(uint16 index, uint16 capacity);
bool isEmpty(const PNCircle *c);
bool isFull(const PNCircle *c);
uint16 size(const PNCircle *c);
void *push(PNCircle *c, PowerNotation *pn);
void *retrieve(PNCircle *c);

PNCircle *newSNCircle(uint16 capacity);
void freeSNCircle(PNCircle *obj);

int test_pushAndRetrieveSNCircle(void);

#endif //SNELLMANS_BLOG_H
