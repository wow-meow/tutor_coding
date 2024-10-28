#include <iostream>
//#include <thread>
#include <cstdbool>
#include <string>
#include <utility> //std::move

using std::string;

int g_count_call_demo = 0;

void static_variable_plus_one() {
    // static variable declared in a function
    static int s_count_static_plus_one = 0; // allocated in heap
    std::cout << s_count_static_plus_one << " ";
    // value is updated and will be carried to next function calls
    s_count_static_plus_one++;
}

void demo_static_variable() {
    std::cout << "g_count_demo_call: " << g_count_call_demo << std::endl;
    g_count_call_demo++;
    std::cout << "demo_static_variable(): \n";
    for (int i = 0; i < 10; ++i) {
        static_variable_plus_one();
    }
    std::cout << "\n";
}

class GfG {
private:
    int m_index;
    int m_postcode;
    string m_address;
    string &m_familyName;

public:
    static int s_m_classIndex;

    explicit GfG(const int index = 0, const int postcode = 0, string address = "", string& familyName)
        : m_index(index), m_postcode(postcode), m_address(std::move(address)), m_familyName(familyName) {
        std::cout << "Constructor GfG() called\n"
                << "s_m_classIndex: " << s_m_classIndex << "\n"
                << "m_index: " << m_index << "\n"
                << "m_postcode: " << m_postcode << "\n"
                << "m_address: " << m_address << "\n"
                << "m_familyName: " << m_familyName << "\n";
    }

    ~GfG() {
        std::cout << "Destructor ~GfG() called, m_index: "
                << "s_m_classIndex: " << s_m_classIndex << "\n"
                << "m_index: " << m_index << "\n"
                << "m_postcode: " << m_postcode << "\n"
                << "m_address: " << m_address << "\n";
    }
};

// non-constant static member must be initialized outside class declaration and header file.
int GfG::s_m_classIndex { 7 };

int main() {
    std::cout << "==== Static variables, Clas Members, and Member functions ====\n";

    demo_static_variable();

    bool isPassable = true;
    if (isPassable) {
        //GfG obj1;
        static GfG obj1(1, 0);
    }

    // std::cout << "obj1.s_m_classIndex: " << obj1.s_m_classIndex << "\n";
    std::cout << "GfG::s_m_classIndex: " << GfG::s_m_classIndex << "\n";
    GfG obj2(2, 0);
    GfG obj3(3, 0);
    obj2.s_m_classIndex = 2;
    obj3.s_m_classIndex = 3;
    std::cout << "obj2.s_m_classIndex: " << GfG::s_m_classIndex << "\n";
    std::cout << "obj3.s_m_classIndex: " << GfG::s_m_classIndex << "\n";

    std::cout << "End of main()\n";
    return 0;
}