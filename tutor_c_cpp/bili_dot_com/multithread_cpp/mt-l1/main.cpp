#include <iostream>
#include <thread>
#include <string>

using std::cout;
using std::endl;
using std::string;

// void printHelloWorld(const string msg) {
//     cout << msg << endl;
// }

void printHelloWorld() {
    //cout << "Hello, World!" << endl;
    int i = 0;
    while (i < 1E6) {
        cout << i << ", ";
        ++i;
    }
    cout << endl;
}

int main() {
    // create a thread and start a task
    // std::thread thread1(printHelloWorld, "Hello, Thread!");
    std::thread thread1(printHelloWorld);

    // join thread1 to main thread, make main thread wait until thread1 finishes, thread1 will block main thread
    //thread1.join();

    // detach thread1 from main thread
    // even when main thread finishes, thread1 goes on with its tasks.
    // thread1.detach();

    if (thread1.joinable()) {
        thread1.join();
    }

    cout << "main thread finished\n";

    return 0;
}
