//
// Created by lh on 11/8/2024.
//

#ifndef VECTOR_H
#define VECTOR_H

#include <iostream>

template<typename T, int Dim>
class Vector
{
    // If any vector is declared whose dimension is less than 4, the assertion fails.
    static_assert(Dim > 3, "Dimension is too small!");

private:
    int m_id1, m_id2;
    T m_values[Dim];

public:
    explicit Vector(int id1 = 0, int id2 = 0);
};

template<typename T, int Dim>
Vector<T, Dim>::Vector(int id1, int id2) : m_id1(id1), m_id2(id2)
{
    for (auto value: m_values) {
        std::cout << value << ", ";
    }
    std::cout << "\n";
}

#endif //VECTOR_H
