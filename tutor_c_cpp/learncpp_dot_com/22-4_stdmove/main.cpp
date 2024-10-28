#include <iostream>
#include <string>
#include <utility>
#include <vector>
//#include <utility>

using std::string;

template <typename T>
void swapCopy(T &a, T &b) {
    T tmp { a }; // invokes copy constructor
    a = b; // copy assignment
    b = tmp; // copy assignment
}

template <typename T>
void swapMove(T &a, T &b) {
    T tmp { std::move(a) }; // invokes move constructor
    a = std::move(b); // move assignment
    b = std::move(tmp); // move assignment
}

// simplified std::remove_reference implementation
template <typename T>
struct remove_reference {
    using type = T;
};

// specialization for lvalue references, e.g., int&
template <typename T>
struct remove_reference<T&> {
    using type = T;
};

// specialization for rvalue references, e.g., int&&
template <typename T>
struct remove_reference<T&&> {
    using type = T;
};

// simplified std::move implementation
template <typename T>
//typename remove_reference<T>::type&& move(T&& arg) {
constexpr auto move1(T&& arg) {
    return static_cast<typename remove_reference<T>::type &&>(arg);
}

class TestMove {
public:
    TestMove() = default; // default constructor
    explicit TestMove(string name): m_name(std::move(name)) {} // default constructor

    TestMove(const TestMove &other) { // copy constructor
        std::cout << "==== Copy constructor invoked. ====\n";
        m_name = other.m_name;
    }

    TestMove(TestMove &&other) noexcept { // move constructor
        std::cout << "==== Move constructor invoked. ====\n";
        //m_name = std::move(other.m_name);
        m_name = move1(other.m_name);
        //other.m_name = ""; // reset the source object
    }

public:
    string m_name;
};

int main() {
    std::cout << "=== Learn std::move() ===" << std::endl;

    std::cout << "==== swapCopy ====\n";
    string a1{ "Hello, World!" };
    string b1{ "Hello, Mars!" };
    std::cout << "a1: " << a1 << "\nb1: " << b1 << "\n";
    swapCopy(a1, b1);
    std::cout << "a1: " << a1 << "\nb1: " << b1 << "\n";

    std::cout << "==== swapMove ====\n";
    string a2{ "Hello, World!" };
    string b2{ "Hello, Mars!" };
    std::cout << "a2: " << a2 << "\nb2: " << b2 << "\n";
    swapMove(a2, b2);
    std::cout << "a2: " << a2 << "\nb2: " << b2 << "\n";

    std::cout << "==== Copy str ====\n";
    string a3{ "Knock" };
    std::vector<std::string> strVec;
    strVec.push_back(a3);
    std::cout << "a3: " << a3 << "\n";
    std::cout << "strVec size: " << strVec.size() << "\n";
    for (int i = 0; i < strVec.size(); ++i) {
        printf("[%d]: %s\n", i, strVec.at(i).data());
    }

    std::cout << "==== Move str ====\n";
    strVec.push_back(std::move(a3));
    std::cout << "a3: " << a3 << "\n";
    std::cout << "strVec size: " << strVec.size() << "\n";
    for (int i = 0; i < strVec.size(); ++i) {
        printf("[%d]: %s\n", i, strVec.at(i).data());
    }

    std::cout << "=== Test custom implemented move() ===\n";
    TestMove testObj1("Hello");
    std::cout << "testObj1 before move: " << testObj1.m_name << "\n";
    TestMove testObj2 = move1(testObj1); // use custom implemented move()
    std::cout << "testObj1 after move: " << testObj1.m_name << "\n";
    std::cout << "testObj2 after move: " << testObj2.m_name << "\n";
    testObj2.m_name = "Good";
    std::cout << "testObj2 name: " << testObj2.m_name << "\n";

    return 0;
}
