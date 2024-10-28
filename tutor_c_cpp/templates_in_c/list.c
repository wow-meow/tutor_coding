//
// Created by lh on 10/25/2024.
//

#include "list.h"
#include <stdio.h> // malloc, realloc

BaseList *list_new_(const int size_of_each_element) {
    BaseList *list = malloc(sizeof(*list));
    if (list == NULL) {
        fprintf(stderr, "Error: Cannot allocate memory to list. Out of Meomory!");
    }
    list->capacity = 8;
    list->buffer = malloc(8 * size_of_each_element);
    if (list->buffer == NULL) {
        fprintf(stderr, "Error: Cannot allocate memory to list->buffer. Out of Meomory!");
    }
    list->index = 0;
    list->length = 0;
    return list;
}

void list_resize(BaseList *list, int new_size) {
    list->buffer = realloc(list->buffer, new_size);
    if (list->buffer == NULL) {
        fprintf(stderr, "Error: Cannot resize, Out of Meomory!");
    }
}

void list_delete(BaseList *list) {
    free(list->buffer);
    free(list);
    list->buffer = NULL;
    list = NULL;
}
