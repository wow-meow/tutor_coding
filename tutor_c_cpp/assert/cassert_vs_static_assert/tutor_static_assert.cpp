//
// Created by lh on 11/8/2024.
//

#include "tutor_static_assert.h"
#include <iostream>
#include <cassert>
#include <complex>
#include "Vector.h"
#include "array_utils.h"
#include <type_traits>

int test_static_assert_cppReference(void)
{
    //assert(std::is_same_v<int, int>);      // error: assert does not take two arguments
    //assert((std::is_same<int, int>::value));      // OK: one argument, C++11
    assert((std::is_same_v<int, int>));      // OK: one argument, C++17
    std::cout << "Checkpoint #1\n";

    // if expression is false, it throws compile-time error and the compiler will not work.
    //static_assert(std::is_same<int, int>::value); // OK: not a macro, C++11
    static_assert(std::is_same_v<int, int>); // OK: not a macro, C++17
    //static_assert(std::is_same_v<int, double>);

    std::complex<double> c;
    //assert(c == std::complex<double>{0, 0});    // error
    assert((c == std::complex<double>{0, 0})); // OK
    std::cout << "Checkpoint #2\n";

    assert(("There are five lights", 2 + 2 == 5));
    //assert(2 + 2 == 5 && "There are five lights");
    std::cout << "Checkpoint #3\n";

    return 0;
}

// static_assert can be put anywhere
static_assert(sizeof(void*) == 8, "relies on 'void*' pointer being exactly 8 bytes");

int test_static_assert_gfg(void)
{
    std::cout << "=== GFG.com: static_assert ===\n\n";

    // static_assert can be put anywhere
    static_assert(sizeof(void*) == 8, "relies on 'void*' pointer being exactly 8 bytes");

    constexpr int num1 = 100;
    static_assert(num1 == 100, "Passed");
    //static_assert("Passed?", num1 == 100); // (expr, msg)

    int num2 = 100; // local variable is not assigned at compile time
    //static_assert(num2 == 100, "Passed"); // fails

    static_assert(sizeof(unsigned int) * CHAR_BIT == 32);
    std::string str1 = "hey bro!: " + std::to_string(CHAR_BIT);
    std::cout << str1 << "\n";
    printf("Hey Bro! CHAR_BIT = %d\n", CHAR_BIT);

    printf("sizeof(long long) is %llu\n", sizeof(long long));
    printf("sizeof(void*) is %llu\n", sizeof(void*));

    Vector<int, 5> vec1;
    Vector<short, 4> vec2;

    constexpr int N1 = 5;
    long arr1[N1] {1, 3, 5, 7, 9};
    print_array<long, N1>(arr1);

    return 0;
}
