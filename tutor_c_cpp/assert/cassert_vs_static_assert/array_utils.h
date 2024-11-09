//
// Created by lh on 11/8/2024.
//

#ifndef ARRAY_UTILS_H
#define ARRAY_UTILS_H

#include <iostream>

template<typename T, int Len>
void print_array(T arr[])
{
    static_assert(Len > 0, "Len MUST be positive!");
    for (int i = 0; i < Len; ++i) {
        std::cout << arr[i] << ", ";
    }
    std::cout << "\n";
}

#endif //ARRAY_UTILS_H
