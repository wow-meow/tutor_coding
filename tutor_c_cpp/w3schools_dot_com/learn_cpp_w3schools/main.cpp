//#define TUTOR1
//#define TUTOR_TYPE_SIZE
//#define TUTOR_CIN
//#define TUTOR_CIN_GETLINE
//#define TUTOR_STRING
//#define TUTOR_CONST_VARIABLE
//#define TUTOR_CONTINUE
//#define TUTOR_ARRAY
//#define TUTOR_ARRAY_EXAMPLE
//#define TUTOR_STRUCT
//#define TUTOR_ENUM
//#define TUTOR_REFERENCE
//#define TUTOR_POINTER
//#define TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE
//#define TUTOR_CSTRING
//#define TUTOR_FUNCTION_OVERLOAD
//#define TUTOR_RAND
//#define TUTOR_CONST_FUNCTION
//#define TUTOR_TOPLEVEL_CV_QUALIFIERS
//#define TUTOR_STATIC_CAST
//#define TUTOR_ARRAY_AS_FUNC_PARAM
//#define TUTOR_MULTIPLE_RETURN_VALUES
//#define TUTOR_ARRAY_NAME_DECAY
//#define TUTOR_MACRO1


#include <iostream>
#include <string>
#include <cstring> // std::strlen()
#include <cstdlib> // std::rand(), std::srand()
#include <ctime>
#include <cmath>
#include <cstdint>
#include <iomanip> // std::boolalpha
#include <typeinfo> // typeid, typeinfo

//using namespace std;
using std::cout;
using std::cin;
using std::string;
//using std::size;

#ifdef TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE
void printCountry(const string& country = "Norway");
#endif //TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE

#ifdef TUTOR_FUNCTION_OVERLOAD
template <typename T> T add(T x, T y);
#endif //TUTOR_FUNCTION_OVERLOAD

#ifdef TUTOR_RAND
int getRandomIntegerWithinRange(int lb = 1, int ub = 100);
template <typename T> T getRandomNumber(T lb, T ub);
void rollDice();
#endif //TUTOR_RAND

#ifdef TUTOR_CONST_FUNCTION
class Demo {
    int m_x1, m_x2, m_x3; // ??: default is private

public:
    explicit Demo(int x1, int x2 = 2, int x3 = 3); // ??: explicit constructor
    void set_data(int x1, int x2 = 2, int x3 = 3);
    int get_data(int data[], int n) const;
    int get_x1() const;
    void print_data_malloc(int n) const;
    void print_data(int n) const;
    void print_data_nonconst(int n); // non-const member function
};

Demo::Demo(int x1, int x2, int x3) // ??: explicit constructor
    : m_x1(x1), m_x2(x2), m_x3(x3) {
}

void Demo::set_data(int x1, int x2, int x3) {
    m_x1 = x1;
    m_x2 = x2;
    m_x3 = x3;
}

// constant member function
int Demo::get_data(int data[], int n) const {
    if (n > 3) {
        cout << "Failed. The class doesn't have so many member variables!\n";
        return 1;
    }
    data[0] = m_x1;
    data[1] = m_x2;
    data[2] = m_x3;
    return 0;
}

// constant member function
int Demo::get_x1() const {
    //++m_x; // Error while attempting to modify the data member
    return m_x1;
}

void Demo::print_data_malloc(int n) const {
    auto data = static_cast<int *>(malloc(n * sizeof(int)));
    get_data(data, n);
    cout << "object members: \n";
    for (int i = 0; i < n; ++i) {
        cout << "x" << (i+1) << ": " << data[i] << ", ";
    }
    cout << "\n";
    free(data);
}

void Demo::print_data(int n) const {
    int data[n];
    get_data(data, n);
    cout << "object members: \n";
    for (int i = 0; i < 3; ++i) {
        cout << "x" << (i+1) << ": " << data[i] << ", ";
    }
    cout << "\n";
}

void Demo::print_data_nonconst(int n) {
    int data[n];
    get_data(data, n);
    cout << "object members: \n";
    for (int i = 0; i < 3; ++i) {
        cout << "x" << (i+1) << ": " << data[i] << ", ";
    }
    cout << "\n";
}
#endif //TUTOR_CONST_FUNCTION

#ifdef TUTOR_TOPLEVEL_CV_QUALIFIERS
template<typename T>
void printIsConstType(T arg) {
    bool isConst = std::is_const_v<T>;
    if (isConst) {
        cout << "`arg` is const by user request.\n";
    } else {
        cout << "`arg` is non-const.\n";
    }
}
#endif //TUTOR_TOPLEVEL_CV_QUALIFIERS

#ifdef TUTOR_REFERENCE
int func1(const int &ref) {
    cout << "addr. of the reference variable: " << &ref << "\n";
    return ref;
}

int& func2() {
    static int x { 10 }; // brace initialization precludes implicit type conversion
    return x;
}

//int& func3() {
//    int x = 10;
//    return x;
//}
#endif //TUTOR_REFERENCE

#ifdef TUTOR_POINTER
int gVar { 42 };

void pointToSthElse(int *ptr) {
    ptr = &gVar;
}

void changeValuePtrPointsTo(int *ptr) {
    *ptr = gVar;
}

void pointToSthElseByReference(int* &refToPtr) {
    refToPtr = &gVar;
}
#endif //TUTOR_POINTER

#ifdef TUTOR_ARRAY_AS_FUNC_PARAM
template <int N>
void showArrayDecay(int arr[N]);

void arrayDecay(int arr[], int len);

template <int N_LEN_ARR>
void avoidArrayDecay(int (&arr)[N_LEN_ARR]);

template <int N_LEN_ARR>
void arrayDecayPassByPtr(int (*ptr)[N_LEN_ARR]);

template <typename T>
void dotPower(T arr[], int lenArr, int exponent);

template <typename T, int N_LEN_ARR>
void dotPower(T arr[N_LEN_ARR], int exponent);
#endif //TUTOR_ARRAY_AS_FUNC_PARAM

#ifdef TUTOR_MULTIPLE_RETURN_VALUES
#include <tuple>
std::tuple<int, int> divide_return_tuple(int dividend, int divisor);
struct quotient_remainder_pair_t { int quotient; int remainder; };
quotient_remainder_pair_t divide_return_struct(int dividend, int divisor);
#endif //TUTOR_MULTIPLE_RETURN_VALUES

#ifdef TUTOR_MACRO1
void someFcn() {
    // Even though gravity is defined inside this function
    // the preprocessor will replace all subsequent occurrences of gravity in the rest of the file
//#define gravity 9.8
}

//void printGravity(double gravity) {
void printGravity(double gravity) {
    // including this one, causing a compilation error
    std::cout << "gravity: " << gravity << '\n';
}
#endif //TUTOR_MACRO1

#ifdef TUTOR1
int getRandomIntegerWithinRange(int lb, int ub) {
    int randInt = std::rand();
    randInt = lb + randInt / (RAND_MAX / (ub - lb + 1) );
    return randInt;
}
#endif //TUTOR1

int main() {
#ifdef TUTOR1
    int arr1[]{1, 2, 3};
    int lenArr1 = sizeof(arr1) / sizeof(arr1[0]);
    int lenArr1_2 = std::size(arr1);
    cout << "size of arr1: " << lenArr1 << ", " << lenArr1_2 << "\n";

    int arr2[lenArr1];
    //arr2 = arr1;
    memcpy(arr2, arr1, sizeof(arr1));
    cout << "arr2:\n";
    for (int i = 0; i < lenArr1; ++i) {
        cout << "[" << i << "]: " << arr2[i] << ", ";
    }
    cout << "\n";

    int arr3[lenArr1];
    std::copy(arr1, arr1 + lenArr1, arr3);
    cout << "arr3:\n";
    for (int i = 0; i < lenArr1; ++i) {
        cout << "[" << i << "]: " << arr3[i] << ", ";
    }
    cout << "\n";

    std::srand(std::time(nullptr));
    int randomNumber{};
    cout << "randomNumber candidates:\n";
    for (int i = 0; i < 5; ++i) {
        randomNumber = getRandomIntegerWithinRange(1, 50); // in TUTOR_RAND
        cout << "[" << i << "]: " << randomNumber << ", ";
    }
    cout << "\n";
    int lenArr4 = randomNumber;
    cout << "lenArr4: " << lenArr4 << "\n";
    int arr4[lenArr4]{9, 7, 5, 3, 1};
    arr4[lenArr4 - 1] = 17;
    arr4[99] = 77;
    int lenArr4_0 = sizeof(arr4) / sizeof(*arr4);
    cout << "acutal len of arr4: " << lenArr4_0 << "\n";
    //cout << "acutal len of arr4: " << std::size(arr4) << "\n";
    cout << "arr4[3]: " << arr4[3] << "\n";
    cout << "arr4[end - 1]: " << arr4[lenArr4 - 1] << "\n";
    cout << "arr4[99]: " << arr4[99] << "\n";
    cout << "arr4:\n";
    for (int i = 0; i < lenArr4; ++i) {
        cout << "[" << i << "]:" << arr4[i] << ", ";
    }
    cout << "\n";

    int lenArr5;
    cout << "\ninput the length of arr5:\n";
    cin >> lenArr5;
    int arr5[lenArr5];
    cout << "arr5:\n";
    for (int i = 0; i < lenArr5; ++i) {
        arr5[i] = i * 4;
        cout << "[" << i << "]: " << arr5[i] << ", ";
    }
    cout << "\n";
#endif //TUTOR1

#ifdef TUTOR_MACRO1
    printGravity(3.71);
#endif //TUTOR_MACRO1

#ifdef TUTOR_TYPE_SIZE
    cout << "sizeof(bool): " << sizeof(bool) << "\n";
    cout << "sizeof(char): " << sizeof(char) << "\n";
    cout << "sizeof(int): " << sizeof(int) << "\n";
#endif //TUTOR_TYPE_SIZE

#ifdef TUTOR_CIN
    int x;
    cout << "Type a number: ";
    cin >> x;
    cout << x << "\n";

    /*
    string fullName;
    cout << "Type your full name: ";
    cin >> fullName;
    cout << "Your full name is: " << fullName << "\n";
    */

#endif //TUTOR_CIN

#ifdef TUTOR_CIN_GETLINE
    string fullName;
    cout << "Type your full name: ";
    getline(cin, fullName);
    cout << "Your full name is: " << fullName << "\n";
#endif //TUTOR_CIN_GETLINE

#ifdef TUTOR_STRING
    string someTxt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    cout << "The length of a string:\nby length() method: " << someTxt.length()
    << "\nby size() method: " << someTxt.size() << "\n";
#endif //TUTOR_STRING

#ifdef TUTOR_CONST_VARIABLE
    const int minutesPerHour = 60;
    cout << "minutesPerHour: " << minutesPerHour << "\n";
#endif //TUTOR_CONST_VARIABLE

#ifdef TUTOR_CONTINUE
    int i = 0;
    while (i < 10) {
        cout << i << "\n";
        if (i == 4) {
            i++; // it is a must
            continue;
        }
        i++;
    }
#endif //TUTOR_CONTINUE

#ifdef TUTOR_ARRAY
    int myNumbers[] = {10, 20, 30, 40, 50};
    int nItems = sizeof(myNumbers) / sizeof(int);
    for (int i = 0; i < nItems; ++i) {
        cout << myNumbers[i] << ", ";
    }
    cout << "\n";
    for (auto e: myNumbers) {
        cout << e << ", ";
    }
    cout << "\n";
#endif //TUTOR_ARRAY

#ifdef TUTOR_ARRAY_EXAMPLE
    // We put "1" to indicate there is a ship.
    const int nRows = 4;
    const int nCols = 4;
    int fleetArrangement[] = {
        0, 1, 1, 0,
        0, 0, 0, 1,
        0, 0, 1, 0,
        0, 0, 1, 0
    };
    int nShips = 0;
    for (auto e: fleetArrangement) {
        nShips += e;
    }

    // Keep track of how many hits the player has
    // and how many turns they have played in these variables
    int nHits = 0;
    int nTurns = 0;

    // Allow the player to keep going until they have hit all four ships
    while (nHits < nShips) {
        int row = 0, col = 0;
        cout << "Selecting coordinates\n";
        // Ask the player for a row
        printf("Choose a row number between 0 and %d: ", nRows);
        cin >> row;
        // Ask the player for a column
        printf("Choose a col number between 0 and %d: ", nCols);
        cin >> col;

        // Check if a ship exists in those coordinates
        if (fleetArrangement[row * nCols + col]) {
            // If the player hit a ship, remove it by setting the value to zero.
            fleetArrangement[row * nCols + col] = 0;
            // Increase the hit counter
            nHits++;
            // Tell the player that they have hit a ship and how many ships are left
            cout << "Hit! " << (4 - nHits) << " left.\n\n";
        } else {
            // Tell the player that they missed
            cout << "Miss.\n\n";
        }

        // Count how many turns the player has taken
        nTurns++;
    }

    cout << "Victory!\n";
    cout << "You won in " << nTurns << " turns";
#endif //TUTOR_ARRAY_EXAMPLE

#ifdef TUTOR_STRUCT
    struct MyDataType0 { // This structure is named "MyDataType0"
        int myNum;
        string myString;
    };

    typedef struct {
        int myNum;
        string myString;
    } myData0_t;

    using myData1_t = struct {
        int myNum;
        string myString;
    };

    const myData0_t s1 { 1, "Hello, World!" };
    const myData1_t s2 { 9, "Good morning!" };

    cout << s1.myNum << "\n";
    cout << s1.myString << "\n";
    cout << s2.myNum << "\n";
    cout << s2.myString << "\n";
#endif //TUTOR_STRUCT

#ifdef TUTOR_ENUM
    typedef enum LevelType {
        LOW = 25,
        MEDIUM,
        HIGH,
    } level_t;
    level_t myLevel = MEDIUM;
    cout << myLevel << "\n";
#endif //TUTOR_ENUM

#ifdef TUTOR_REFERENCE
    string food { "Pizza" }; // brace initialization precludes implicit type conversion
    string &meal = food;
    cout << "food: " << food << "\n";
    cout << "meal: " << meal << "\n";
    cout << "addr of food: " << &food << "\n";
    string* p_food = &food;
    cout << "food: " << *p_food << "\n";
    cout << "addr of food: " << p_food << "\n";
    *p_food = "Hamburger";
    cout << "food: " << *p_food << "\n";
    cout << "addr of food: " << p_food << "\n";

    cout << func1(10) << "\n";

    func2() = 30;
    cout << func2() << "\n";

    //func3() = 30;
    //cout << func3();

    int x = 10;
    int *ptr = &x; // ptr := addr of x
    int &ref = x; // ref: self-dereferencing const ptr, i.e., int *const

    // cannot declare pointer to a reference
    //int& *ptr1 = ptr;
    //int& *ptr2 = &ref; // ptr2 := addr of ref
#endif //TUTOR_REFERENCE

#ifdef TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE
    printCountry("Sweden");
    printCountry("India");
    printCountry();
    printCountry("USA");
#endif //TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE

#ifdef TUTOR_CSTRING
    const char cstr1[] { "c-style string" };
    cout << cstr1 << "\n";
    char cstr2[255]{};
    cout << "Enter cstr2's content: \n";
    cin.getline(cstr2, size(cstr2));
    cout << "You entered: \n" << cstr2 << "\n";
    /* strlen() very slow, traverse thru the whole array
     * */
    cout << "strlen: " << strlen(cstr2) << "\n";
#endif //TUTOR_CSTRING

#ifdef TUTOR_FUNCTION_OVERLOAD
    cout << "Overloading functions:\n";
    cout << "int " << add<int>(1, 2) << "\n";
    cout << "float " << add<float>(1.2f, 2.1f) << "\n";
    cout << "double " << add<double>(1.2, 2.1) << "\n";
#endif //TUTOR_FUNCTION_OVERLOAD

#ifdef TUTOR_RAND
    std::srand(std::time(nullptr));

    //float lb = 20.f, ub = 100.f;
    //auto randomNumber = getRandomNumber<int>(lb, ub);
    //auto randomNumber = getRandomNumber<float>();
    //auto randomNumber = getRandomNumber<double>(lb, ub);

    int lb = 1, ub = 9;
    cout << "Random number on [" << lb << ", " << ub << "]:\n";
    for (int i = 0; i < 3; ++i) {
        auto randomNumber = getRandomIntegerWithinRange(lb, ub);
        cout << "[" << i << "]: " << randomNumber << ", ";
    }
    cout << "\n";

    //rollDice();
#endif //TUTOR_RAND

#ifdef TUTOR_CONST_FUNCTION
    auto obj1 = Demo(7);// non-const object
    const auto obj2 = Demo(8); // const object
    obj1.print_data(3);
    obj2.print_data(3);

    obj1.set_data(100, 20, 30);
    //obj2.set_data(150, 20, 30); // const object cannot call the non-const function
    obj1.print_data_nonconst(3);
    obj2.print_data(3);
#endif //TUTOR_CONST_FUNCTION

#ifdef TUTOR_TOPLEVEL_CV_QUALIFIERS
    char robert{};
    const char amy{};
    const char *alfred{};
    char *const linda{};
    const char *const melissa{};
    auto arobert = robert;
    auto aamy = amy;
    auto aalfred = alfred;
    auto alinda = linda;
    auto amelissa = melissa;
    printIsConstType(robert);
    printIsConstType(amy);
    printIsConstType(alfred);
    printIsConstType(linda);
    printIsConstType(melissa);
    printIsConstType<const char>(amy);
    printIsConstType<char *const>(linda);
    printIsConstType<const char *const>(melissa);
#endif //TUTOR_TOPLEVEL_CV_QUALIFIERS

#ifdef TUTOR_POINTER
    int number { 23 };
    int *pNumber { &number };

    cout << "Passing pointer to function:\n";
    cout << "set pointer value in the function, only change the value of the copy of the function argument. "
            "This will not change the value both the pointer and its copy point to!\n";
    cout << "Before: " << *pNumber << "\n";
    pointToSthElse(pNumber);
    cout << "After: " << *pNumber << "\n";

    cout << "Now directly modify the value to which the copy of the passed-in pointer "
            "as the function argument points to.:\n";
    cout << "Before: *pNumber: " << *pNumber << ", number: " << number << "\n";
    changeValuePtrPointsTo(pNumber);
    cout << "After *pNumber: " << *pNumber << ", number: " << number << "\n";
    cout << "Notably, it will change the value of variable the pointer points to.\n";

    number = 23; // reset to the original value
    cout << "Passing a reference to the pointer to the function.\n";
    cout << "Before: *pNumber: " << *pNumber << ", number: " << number << "\n";
    pointToSthElseByReference(pNumber);
    cout << "After: *pNumber: " << *pNumber << ", number: " << number << "\n";
    cout << "Favorably, it will NOT change the value of variable the pointer points to.\n";
#endif //TUTOR_POINTER

#ifdef TUTOR_STATIC_CAST
    int s1 { -1 };
    unsigned int u1 { static_cast<unsigned int>(s1) };
    cout << "s1: " << s1 << ", u1: " << u1 << "\n";

    // 2^32 - 1 = 4294967295, (4294967295 + 1) /2 = 1 << (32 - 1) )
    u1 = static_cast<unsigned int>( 1 << (32 - 1) ) - 1;
    s1 = static_cast<int>(u1);
    cout << "u1: " << u1 << ", s1: " << s1 << "\n";

    u1 = static_cast<unsigned int>(1 << (32 - 1));
    s1 = static_cast<int>(u1);
    cout << "u1: " << u1 << ", s1: " << s1 << "\n";

    u1 = static_cast<unsigned int>( 1 << (32 - 1) ) + 1;
    s1 = static_cast<int>(u1);
    cout << "u1: " << u1 << ", s1: " << s1 << "\n";

    std::int8_t myInt{65}; // initialize myInt with value 65
    cout << "myInt: " << myInt << '\n'; // you're probably expecting this to print 65
    std::uint8_t u2{127};
    std::int8_t s2{static_cast<std::int8_t>(u2)};
    cout << "uint8_t: " << u2 << ", int8_t: " << s2 << "\n";

    u2 = 128;
    s2 = static_cast<std::int8_t>(u2);
    cout << "uint8_t: " << u2 << ", int8_t: " << s2 << "\n";

    //u2 = 129;
    //s2 = static_cast<std::int8_t>(u2);
    //cout << "uint8_t: " << u2 << ", int8_t: " << s2 << "\n";

    //u2 = 130;
    //s2 = static_cast<std::int8_t>(u2);
    //cout << "uint8_t: " << u2 << ", int8_t: " << s2 << "\n";
#endif //TUTOR_STATIC_CAST

#ifdef TUTOR_ARRAY_AS_FUNC_PARAM
    int nArr[]{9, 7, 5, 3, 1};
    int nLenArr = sizeof(nArr) / sizeof(nArr[0]);
    cout << "Actual size of array is: " << sizeof nArr
    << ", len: " << nLenArr << "\n";
    auto ptr{ nArr };
    cout << "sizeof arr: " << sizeof nArr << ", sizeof ptr: " << sizeof ptr << "\n";

    cout << "arr: " << typeid(nArr).name() << ", ptr: " << typeid(ptr).name() << "\n";

    showArrayDecay<5>(nArr);
    arrayDecay(nArr, nLenArr);
    avoidArrayDecay<5>(nArr);

    int nArr_bk[5]; // backup of nArr
    memcpy(nArr_bk, nArr, sizeof(nArr));

    dotPower<int>(nArr, nLenArr, 3);
    // show result
    for (int i = 0; i < nLenArr; ++i) {
        const auto elem = nArr[i];
        cout << "[" << i << "]: " << elem << ", ";
    }
    cout << "\n";

    // reset array
    //memcpy(nArr, nArr_bk, sizeof(nArr_bk));
    std::copy(nArr_bk, nArr_bk + nLenArr, nArr);

    dotPower<int, 5>(nArr, 3);
    // show result
    for (int i = 0; i < nLenArr; ++i) {
        const auto elem = nArr[i];
        cout << "[" << i << "]: " << elem << ", ";
    }
    cout << "\n";
#endif //TUTOR_ARRAY_AS_FUNC_PARAM

#ifdef TUTOR_MULTIPLE_RETURN_VALUES
    auto res = divide_return_struct(14, 3);
    cout << res.quotient << ", " << res.remainder << "\n";
    auto [quotient, remainder] = divide_return_struct(14, 3);
    cout << quotient << ", " << remainder << "\n";
    std::tie(quotient, remainder) = divide_return_tuple(14, 3);
    cout << quotient << ", " << remainder << "\n";
#endif //TUTOR_MULTIPLE_RETURN_VALUES

#ifdef TUTOR_ARRAY_NAME_DECAY
    int arr[10];
    int *p{arr}; // &arr[0]
    int (*ap)[10]{&arr}; // T (*)[N], pointer to N-element array of T
    cout << "size of p: " << sizeof(p) << "\n";
    cout << "size of ap: " << sizeof(ap) << "\n";
    printf("p: 0x%p, ap: 0x%p\n", static_cast<void *>(p), static_cast<void *>(ap));
    p++;
    ap++;
    printf("p: 0x%p, ap: 0x%p\n", static_cast<void *>(p), static_cast<void *>(ap));

    arr[4] = 99;
    printf("*((int *) arr + i) = *((void *) arr + i * sizof(int))\n"
           "= *(0x%p + 0x%x) = *(0x%p) = %d \n",
        arr, static_cast<unsigned>(4 * sizeof(arr[0])), arr + 4, *(arr + 4));
#endif //TUTOR_ARRAY_NAME_DECAY

    return 0;
}

#ifdef TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE
void printCountry(const string& country /* = "Norway" */) {
    cout << country << "\n";
}
#endif //TUTOR_FUNCTION_PARAMETER_DEFAULT_VALUE

#ifdef TUTOR_FUNCTION_OVERLOAD
template <typename T> T add(T x, T y) {
    return x + y;
}
#endif //TUTOR_FUNCTION_OVERLOAD

#ifdef TUTOR_RAND
int getRandomIntegerWithinRange(int lb, int ub) {
    int randInt = std::rand();
    randInt = lb + randInt / (RAND_MAX / (ub - lb + 1) );
    return randInt;
}

float getRandomFloat() {
    return 0;
}

template <typename T>
T getRandomNumber(T lb, T ub) {
    std::srand(std::time(nullptr)); // use current time as seed for random generator
    //T res = std::rand() % (1 + ub - lb) + lb;
    int randInt = std::rand();
    cout << "Random number on [0, " << RAND_MAX << "]: " << randInt << '\n';
    int lbAngleInDeg = 0;
    int ubAngleInDeg = 90;
    int angleInDeg = randInt % (1 + ubAngleInDeg - lbAngleInDeg) + lbAngleInDeg;
    double angle = (double) angleInDeg / 180 * std::numbers::pi;
    double lambda = std::sin(angle); // in range [0, 1], inclusive
    return lambda * (ub - lb) + lb;
}

void rollDice() {
    for (int nSides: {2, 4, 6, 8}) {
        constexpr int nRounds = 10;
        cout << "Roll " << nSides << "-sided dice " << nRounds << " times: ";
        for (int k = 0; k != nRounds; ++k) {
            int pointsRolledOut = nSides + 1;
            int randomInt = std::rand();
            while (pointsRolledOut > nSides) {
                pointsRolledOut = 1 + randomInt / ((RAND_MAX + 1u) / nSides);
                //pointsRolledOut = 1 + randomInt / (RAND_MAX / nSides);
            }
            int pointsRolledOut1 = 1 + randomInt / (RAND_MAX / nSides);
            int pointsRolledOut2  = 1 + randomInt % nSides; // biased distribution
            double tmpDouble = 1 + (double) randomInt / (double) RAND_MAX * (nSides - 1);
            int pointsRolledOut3 = std::round(tmpDouble);
            std::cout << "(" << pointsRolledOut << ", " << pointsRolledOut1 << ", " << pointsRolledOut2 << ", " << pointsRolledOut3 << ") ";
        }
        std::cout << '\n';
    }
}
#endif //TUTOR_RAND

#ifdef TUTOR_ARRAY_AS_FUNC_PARAM
template <int N>
void showArrayDecay(int arr[N]) {
    auto ptr{ arr };
    const std::type_info &ti1 = typeid(arr);
    const std::type_info &ti2 = typeid(ptr);
    cout << "arr: " << ti1.name() << ", ptr: " << ti2.name() << "\n";

    cout << std::boolalpha;
    cout << "\nFirst, let's prove that arr decays into an int* pointer.\n"
            "Evaluation causes arr to decay, type deduction should deduce\n"
            "type int*:\n"
    << ( ti2 == typeid(int *) ) << "\n";
    cout << "Now let's prove that the pointer holds the address \n"
            "of the first element of the array:\n"
    << ( &arr[0] == ptr ) << "\n\n";
}

void arrayDecay(int arr[], int len) {
    cout << "Modified size of array by passing-by-value: "
    << sizeof arr << "\n";
}

/* Avoid array decay by passing array by reference
 * */
template <int N_LEN_ARR>
void avoidArrayDecay(int (&arr)[N_LEN_ARR]) {
    cout << "Modified size of array by passing-by-reference: "
    << sizeof arr << "\n";
}

template <int N_LEN_ARR>
void arrayDecayPassByPtr(int (*ptr)[N_LEN_ARR]) {
    cout << "Modified size of array by passing-by-pointer (pointer to the array): "
    << sizeof ptr << "\n";
}

template <typename T>
void dotPower(T arr[], int lenArr, int exponent) {
    // integer array decays, implicitly converted, to pointer (int*)
    // sizeof(int *) = 8 bytes, sizeof(int) = 4 bytes
    int nItems = sizeof(arr) / sizeof(arr[0]);
    //int nItems = std::ssize(arr);
    cout << "nItems: " << nItems << ", ";
    cout << "nLenArr: " << lenArr << "\n";
    for (int i = 0; i < lenArr; ++i) {
        auto elem = arr[i];
        auto res = arr[i];
        for (int j = 0; j < exponent - 1; ++j) {
            res *= elem;
        }
        arr[i] = res;
        //cout << "[" << i << "]: " << res << ", ";
    }
    //cout << "\n";
}

template <typename T, int LEN_ARR>
void dotPower(T arr[LEN_ARR], int exponent) {
    for (int i = 0; i < LEN_ARR; ++i) {
        auto elem = arr[i];
        auto res = arr[i];
        for (int j = 0; j < exponent - 1; ++j) {
            res *= elem;
        }
        arr[i] = res;
        //cout << "[" << i << "]: " << res << ", ";
    }
    //cout << "\n";
}
#endif //TUTOR_ARRAY_AS_FUNC_PARAM

#ifdef TUTOR_MULTIPLE_RETURN_VALUES
std::tuple<int, int> divide_return_tuple(int dividend, int divisor) {
    //return std::make_tuple(dividend / divisor, dividend % divisor);
    return {dividend / divisor, dividend % divisor};
}

quotient_remainder_pair_t divide_return_struct(int dividend, int divisor) {
    return {dividend / divisor, dividend % divisor};
}
#endif //TUTOR_MULTIPLE_RETURN_VALUES

