//
// Created by lh on 11/8/2024.
//

#ifndef TEMPLATE_H
#define TEMPLATE_H

#include <iostream>

template <typename T>
class MyTemplateClass
{
public:
    T data;
    MyTemplateClass(T value);
    void printData();
};

template <typename T>
MyTemplateClass<T>::MyTemplateClass(T value) : data(value) {}

template <typename T>
void MyTemplateClass<T>::printData()
{
    std::cout << "Data: " << data << std::endl;
}

template <typename T>
T add(T a, T b)
{
    return a + b;
}
#endif //TEMPLATE_H
