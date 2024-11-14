#include <iostream>
#include "array_utils.h"

static_assert(sizeof(void*) == 8, "relies on 'void*' pointer being exactly 8 bytes");

template <typename T, int Dim>
class Vector
{
    // If any vector is declared whose dimension is less than 4, the assertion fails.
    static_assert(Dim > 3, "Dimension is too small!");

private:
    int m_id1, m_id2;
    T m_values[Dim];

public:
    explicit Vector(int id1 = 0, int id2 = 0) : m_id1(id1), m_id2(id2)
    {
        for (auto value: m_values) {
            std::cout << value << ", ";
        }
        std::cout << "\n";
    }
};

int main()
{
    std::cout << "=== Learn static_assert ===" << std::endl;

    //int num1 = 100;
    constexpr int num1 = 100;
    static_assert(num1 == 100, "wow");
    static_assert(sizeof(unsigned int) * CHAR_BIT == 32);
    std::string str1 = "hey bro!: " + std::to_string(CHAR_BIT);
    std::cout << str1 << "\n";
    printf("Hey Bro! CHAR_BIT = %d\n", CHAR_BIT);

    printf("sizeof(long long) is %llu\n", sizeof(long long));
    printf("sizeof(void*) is %llu\n", sizeof(void*));

    //Vector<int, 5> vec1;
    //Vector<short, 4> vec2;

    constexpr int N1 = 5;
    long arr1[N1] {1, 3, 5, 7, 9};
    print_array<long, N1>(arr1);

    return 0;
}
