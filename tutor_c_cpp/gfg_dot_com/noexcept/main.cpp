#include <iostream>
#include <vector>

int int_divide (const int a, const int b) {
    if (b == 0) {
        throw std::runtime_error("Error: Division by zero!");
    }
    return a / b;
}

int int_divide_safe (const int a, const int b) noexcept {
    if (b == 0) {
        // instead of throwing an exception, program terminates when b is zero
        std::cerr << "Error: Division by zero in int_divide_safe(int, int)!\n";
        std::terminate();
    }
    return a / b;
}

template <typename T>
void process(const T &value) noexcept(noexcept(std::declval<T>().size())) {
    // Try to call the size() member function of T
    // If T's size() can throw, this function won't be noexcept for T
    // If T's size() is noexcept, this function will be noexcept for T
    std::cout << "Size: " << value.size() << "\n";
}

int main() {
    std::cout << "=== Learn noexcept ===\n";

    std::cout << "==== Handling Division-by-Zero Exceptions ====\n";
    // It is the job of the programmer to check function with zero exceptions
    // is declared with noexcept specifier.
    std::cout << "noexcept value for int_divide(10, 0): " << noexcept(int_divide(10, 0)) << "\n";
    std::cout << "noexcept value for int_divide(10, 3): " << noexcept(int_divide(10, 3)) << "\n";
    std::cout << "noexcept value for int_divide_safe(10, 0): " << noexcept(int_divide_safe(10, 0)) << "\n";

    //std::cout << "res: " << int_divide(10, 0) << "\n";
    std::cout << "res: " << int_divide(10, 3) << "\n";
    //std::cout << "res: " << int_divide_safe(10, 0) << "\n";

    std::cout << "==== NoExcept Specifier with a Function Template ====\n";
    std::vector<int> intSeq{ 1, 3, 5, 7, 9 };
    std::cout << "noexcept value for process(std::vector<>): " << noexcept(process(intSeq)) << "\n";
    //std::cout << "noexcept value for process(int): " << noexcept(process(168)) << "\n";
    process(intSeq);
    //process(168);

    return 0;
}
