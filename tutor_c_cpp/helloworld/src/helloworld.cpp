#include <iostream>
#include <vector>
#include <string>

// Avoid using the entire namespace
//using namespace std;
using std::vector;
using std::string;
using std::cout;
using std::endl;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};

    cout << "Starting main" << endl;
    cout << endl;
    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    cout << "\nHello, World!!!\n" << endl;
    cout << "Ending main" << endl;
}
