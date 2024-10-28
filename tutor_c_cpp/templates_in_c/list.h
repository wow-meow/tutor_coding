//
// Created by lh on 10/25/2024.
//

#ifndef LIST_H
#define LIST_H

#include <stdlib.h>
typedef struct _BaseList {
    void *buffer;
    int index;
    int length;
    int capacity;
} BaseList;

// Macro for type conversion: (BaseList *) --> List(type)
// create an anonymous struct containing "type *"
#define List(type)          \
    struct {                \
        type *buffer;       \
        int   element_size; \
        int   index;        \
        int   length;       \
        int   capacity;     \
    } *
// Notice at the end of the List macro definition, there is an asterisk.
// That's important if we want this to work. C wouldn't like it if we tried to
// convert from a BaseList to an anonymous structure. However, if we can
// convert from a pointer to a BaseList to a pointer to an anonymous structure
// it will do it but probably give you a warning.

BaseList *list_new_(int size_of_each_element);
void list_delete(BaseList *list);
void list_resize(BaseList *list, int new_size);

#define list_new(type) ( ( List(type) ) list_new_(sizeof(type)) )

// For the push function, it was easier to create a simple macro. If we run out of space,
// we allocate twice as much. We store the data in the next available spot.
#define list_push(list, data)                  \
    if(list->index > list->length)             \
        list_resize(list, list->capacity * 2); \
    list->buffer[list->index++] = data;        \
    list->length++;

#endif //LIST_H
