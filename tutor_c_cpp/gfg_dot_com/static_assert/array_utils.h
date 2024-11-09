//
// Created by lh on 11/8/2024.
//

#ifndef ARRAY_UTILS_H
#define ARRAY_UTILS_H

#include <iostream>

template <typename T, int N>
void print_array(T arr[])
{
    static_assert(N > 0, "N MUST be positive!");
    for (int i = 0; i < N; ++i) {
        std::cout << arr[i] << ", ";
    }
    std::cout << "\n";
}

#endif //ARRAY_UTILS_H
