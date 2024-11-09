//
// Created by lh on 11/7/2024.
//

#include "snellmans_blog.h"

#include <assert.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

uint16 mask(uint16 index, uint16 capacity) { return index & (capacity - 1); }
uint16 increment(uint16 index, uint16 capacity) { return mask(index + 1, capacity); }

bool isEmpty(const PNCircle *c) { return c->count == 0; }
bool isFull(const PNCircle *c) { return c->count == c->capacity; }
bool isEmpty_readWriteIndexes(const PNCircle *c) { return c->read_index == c->write_index; }
bool isFull_readWriteIndexes(const PNCircle *c) { return increment(c->write_index, c->capacity) == c->read_index; }
uint16 size(const PNCircle *c) { return mask(c->write_index - c->read_index, c->capacity); }

void *push(PNCircle *c, PowerNotation *pn)
{
    PowerNotation *target = &c->powNotNumbers[c->write_index];
    *target = *pn; // copy assignment of struct type
    target->value_in_decimal = pn->coefficient * pow(pn->base, pn->exponent);
    printf("\npush to [%d] at 0x%p, its value in decimal = %.2f\n",
        c->write_index, (void *) target, target->value_in_decimal);
    c->write_index = increment(c->write_index, c->capacity);
    c->count++;
    printf("updated write_index = %d, count = %d\n", c->write_index, c->count);
    return NULL;
}

void *retrieve(PNCircle *c)
{
    PowerNotation *pn = &c->powNotNumbers[c->read_index];
    printf("\nretrieve from [%d], pn value in decimal = %.2f\n", c->read_index, pn->value_in_decimal);
    c->read_index = increment(c->read_index, c->capacity);
    c->count--;
    printf("updated read_index = %d, count = %d\n", c->read_index, c->count);
    return (void *) pn;
}

PNCircle *newSNCircle(uint16 capacity)
{
    PNCircle *obj = (PNCircle *) malloc(sizeof(PNCircle));
    if (!obj) { fprintf(stderr, "newSNCircle: Memory allocation failed.\n"); }
    memset(obj, 0, sizeof(PNCircle));

    // methods
    obj->isEmpty = isEmpty;
    obj->isFull = isFull;
    obj->size = size;
    obj->push = push;
    obj->retrieve = retrieve;

    // member attributes
    obj->capacity = capacity;
    //obj->count = 0;
    //obj->read_index = 0;
    //obj->write_index = 0;
    obj->powNotNumbers = (PowerNotation *) malloc(obj->capacity * sizeof(PowerNotation));

    return obj;
}

void freeSNCircle(PNCircle *obj)
{
    free(obj->powNotNumbers);
    free(obj);
}

int test_pushAndRetrieveSNCircle(void)
{
    const int LEN = 8;
    PNCircle *c = newSNCircle(LEN);

    // push
    for (int i = 0; i < 2 * LEN; ++i) {
        PowerNotation pn = {i, 10, i};
        if (!c->isFull(c)) {
            c->push(c, &pn);
        } else {
            printf("\nNote: PNCircle is FULL, count = %d\n", c->count);
            break;
        }
    }

    // retrieve
    for (int i = 0; i < 2 * LEN; ++i) {
        if (!c->isEmpty(c)) {
            PowerNotation *pn = c->retrieve(c);
            printf("retrieve: pn stored at 0x%p, its value in decimal = %.2f\n",
                (void *) pn, pn->value_in_decimal);
        } else {
            printf("\nNote: PNCircle is EMPTY, count = %d\n", c->count);
            break;
        }
    }

    freeSNCircle(c);
    return 0;
}
