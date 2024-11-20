#include <iostream>
#include <vector>
#include <string>

//using namespace std;
using std::vector;
using std::cout;
using std::endl;
using std::string;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};
    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;
}
