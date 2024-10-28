#include <iostream>
#include <format>

constexpr int product(const int x, const int y) { return x * y; }

constexpr long int fib(const int n) {
    return (n <= 1) ? n : fib(n-1) + fib(n-2);
}

int main()
{
    std::cout << "=== Learn constexpr ===" << std::endl;

    constexpr int len_arr = product(2, 3);
    std::cout << "len_arr: " << len_arr << "\n";
    int arr1[len_arr] = {1, 2, 3, 4, 5, 6};
    for (const auto elem: arr1) {
        std::cout << elem << " ";
    }
    std::cout << "\n";

    constexpr int N1 = 15;
    std::cout << std::format("fib({}): {}\n", N1, fib(N1));
    constexpr int N2 = 20;
    std::cout << std::format("fib({}): {}\n", N2, fib(N2));

    int n1 = N1;
    std::cout << std::format("C/CPP variable declaration is case-sensitive:\n"
                             "var n1 = {}, constexpr N1 = {}\n",
                             n1, N1);

    return 0;
}
