#include <iostream>
#include <thread>
#include <memory>

std::thread gThread1, gThread2;

// int num_test_thread2 = 1000;

void foo1(int& x) {
    x += 1;
    std::cout << "foo1() step-in: " << x << std::endl;
    for (int i = 0; i < 1E2; ++i) {
        std::cout << i << ", ";
    }
    std::cout << std::endl;
    std::cout << "foo1() step-out: " << x << std::endl;
}

void foo2(int* x) {
    *x += 1;
    std::cout << "foo2() step-in: " << *x << std::endl;
    for (int i = 0; i < 1E2; ++i) {
        std::cout << i << ", ";
    }
    std::cout << std::endl;
    std::cout << "foo2() step-out: " << *x << std::endl;
}

void test_thread1() {
    int num_test = 0;
    gThread1 = std::thread(foo1, std::ref(num_test));
    std::cout << num_test << std::endl;
}

void test_thread2() {
    int num_test_thread2 = 1000;
    std::cout << "test_thread2() step-in: " << num_test_thread2 << std::endl;
    gThread2 = std::thread(foo2, &num_test_thread2);
    std::cout << "test_thread2() step-out: " << num_test_thread2 << std::endl;
}

class A {
private:
    int m_id;
    friend void thread_foo();
public:
    explicit A (const int id) : m_id(id) { }
    static void foo() {
        std::cout << "A::foo(): " << std::endl;
    }
    void showId() const {
        std::cout << "A::showId(): \n" << "ID: " << m_id << std::endl;
    }
};

// void thread_foo() {
//     std::cout << "A::thread_foo(): " << std::endl;
//     std::shared_ptr<A> ptr = std::make_shared<A>(2);
//     std::thread thread_classA(A::foo, ptr);
//     if (thread_classA.joinable()) {
//         thread_classA.join();
//     }
// }

int main() {
    std::cout << "==== Multithreading Lesson 2 ====" << std::endl;

    //int num_main = 1;
    //std::cout << num_main << std::endl;
    //std::thread thread1(foo, std::ref(num_main));
    //if (thread1.joinable()) {
    //    thread1.join();
    //}
    //std::cout << num_main << std::endl;

    // test_thread1();
    // if (gThread1.joinable()) {
    //     gThread1.join();
    // }

    // test_thread2();
    // if (gThread2.joinable()) {
    //     gThread2.join();
    // }

    // auto pNum = new int(1);
    // std::thread thread1(foo2, pNum);
    // if (thread1.joinable()) {
    //     thread1.join();
    // }
    // delete pNum;

    // A a;
    // std::thread thread_classA(a.foo);

    auto p_a1 = new A(1);

    std::thread thread_classA_a1_foo(A::foo);
    if (thread_classA_a1_foo.joinable()) {
        thread_classA_a1_foo.join();
    }

    // std::thread thread_classA_a1_showId(p_a1->showId);
    // if (thread_classA_a1_showId.joinable()) {
    //     thread_classA_a1_showId.join();
    // }

    // std::shared_ptr<A> p_a2 = std::make_shared<A>(2);
    // std::thread thread_classA_a2(A::foo, p_a2);
    // if (thread_classA_a2.joinable()) {
    //     thread_classA_a2.join();
    // }

    std::cout << "threads over\n";
    delete p_a1;
    return 0;
}
