/**
 * struct
 * - The size of the structure is equal to or greater than the total size of all of its members.
 * - The structure can contain data in multiple members at the same time.
 *
 * union
 * - The size of the union is the size of its largest member.
 * - Only one member can contain data at the same time.
 *
 **/

//#include <stdalign.h>
#include <stdbool.h>
#include <stdio.h>

typedef union MyUnion1 {
    int x; // both 4 bytes
    int y;
} myUnion1_t; // 4 bytes

typedef union MyUnion2 {
    int x; // 4 bytes
    double y; // 8 bytes
} myUnion2_t; // 8 bytes

// Even if the array is a collection of similar data elements, it is considered to be a single entity
// by the C compiler.
typedef union MyUnion3 {
    int x[10]; // 4*10 bytes
    char y; // 1 byte
} myUnion3_t; // 40 bytes

typedef union MyUnion4 {
    char x[10]; // 10 bytes
    int y; // 4 byte
} myUnion4_t; // 12 bytes as if pack(4) since size of int is 4 < 8

typedef union MyUnion4_2 {
    int x; // 4 byte
    char y[10]; // 10 bytes
} myUnion4_2_t; // 12 bytes % 4 = 0

typedef union MyUnion5 {
    char x[13]; // 13 bytes
    int y; // 4 byte
} myUnion5_t; // 16 bytes % 4 = 0

typedef union MyUnion6 {
    char x[10]; // 10 bytes
    double y; // 8 byte
} myUnion6_t; // 16 bytes % 8 = 0

typedef struct MyStruct1 {
    double x; // 8 bytes
    int y; // 4 bytes
} myStruct1_t; // 8 + 4 = 12 --> 16 bytes, since size of double is 8

typedef struct MyStruct1_2 {
    int y; // 4 bytes
    double x; // 8 bytes
} myStruct1_2_t; // 4 + 8 = 12 --> 16 bytes, since size of double is 8

typedef struct MyStruct2 {
    int x; // 4 bytes
    char y; // 1 byte
} myStruct2_t; // 5 --> 8 bytes, since size of int is 4, and 8 % 4 = 0

typedef struct MyStruct3 {
    double x; // 8 bytes
    char y; // 1 byte
} myStruct3_t; // 8 + 1 = 9 --> 16 bytes % 8 = 0

typedef struct MyStruct4 {
    int x[10]; // 4 * 10 bytes
    char y; // 1 byte
} myStruct4_t; // 41 --> 44 bytes, since size of int is 4, and 44 % 4 = 0

typedef struct MyStruct5 {
    double x[10]; // 8 * 10 bytes
    char y; // 1 byte
} myStruct5_t; // 81 --> 88 bytes, since size of double is 8, and 88 % 8 = 0

typedef struct MyStruct6 {
    int x; // 4 byte
    char y[7]; // 7 bytes
} myStruct6_t; // 4 + 7 = 11 --> 12 bytes % 4 = 0

typedef struct MyNode1 {
    struct MyNode1 *left;
    struct MyNode1 *right;
    double data;
} myNode1_t;

typedef struct MyNode2 {
    bool is_leaf;
    union ptrOrDataUnion {
        struct ptrSt {
            struct MyNode2 *left;
            struct MyNode2 *right;
        } ptr;
        double data;
    } content_union;
} myNode2_t;

typedef enum my_type {
    CHAR, INT, DOUBLE,
    STRING,
} typeEnum;

/**
 * Print the type and value of the argument
 *
 * See GccProjects/variable_type for more details
 **/
// struct + union
typedef struct myBlob {
    typeEnum type; // size 4 bytes, int
    union {
        char c; // size 1 byte
        int i; // size 4 bytes
        double db; // size 8
        char *s; // size 8 bytes, pointer
    }; // anonymous union, its members are directly accessible
} blob_t; // size 4 + 8 = 12 --> 16 bytes, pack(8)

void print_var_type_and_value(const blob_t *var) {
    if (var->type == CHAR) {
        printf("(char) %c\n", var->c);
    } else if (var->type == INT) {
        printf("(int) %d\n", var->i);
    } else if (var->type == DOUBLE) {
        printf("(double) %f\n", var->db);
    } else if (var->type == STRING) {
        printf("(string) %s\n", var->s);
    } else {
        fprintf(stderr, "ERROR: Unknown data type!\n");
    }
}

int main(void) {
    printf("== Union and Structure ==\n");

    printf("\n=== Size of Union ===\n");

    printf("size of myUnion1_t: %llu bytes\n", sizeof(myUnion1_t));
    printf("size of myUnion2_t: %llu bytes\n", sizeof(myUnion2_t));
    printf("size of myUnion3_t: %llu bytes\n", sizeof(myUnion3_t));
    printf("size of myUnion4_t: %llu bytes\n", sizeof(myUnion4_t));
    printf("size of myUnion4_2_t: %llu bytes\n", sizeof(myUnion4_2_t));
    printf("size of myUnion5_t: %llu bytes\n", sizeof(myUnion5_t));
    printf("size of myUnion6_t: %llu bytes\n", sizeof(myUnion6_t));

    printf("\n=== Change the pack byte number ===\n");

    // 固有类型的对界, 取编译器对界方式, 与自身大小中较小的一个
#pragma pack(2) // 8 --> 2 bytes
    union MyUnion1 {
        char a[13]; // size 13 bytes
        int b; // size 4 bytes > 2, 4 = 2 * 2
    }; // size 14 bytes, 14 % 2 = 0, rather than 16 bytes when pack(8)

    union MyUnion2 {
        char a[13]; // size 13 bytes
        char b; // size 1 byte < 2
    }; // size 13 bytes, as if pack(1)
#pragma pack(8) // 2 --> 8 bytes

    printf("size of MyUnion1: %llu bytes\n", sizeof(union MyUnion1));
    printf("size of MyUnion2: %llu bytes\n", sizeof(union MyUnion2));

#pragma pack(push, 2) // 8 --> 2 bytes
    struct MyStruct1 {
        char a[13]; // size 13 bytes
        int b; // size 4 bytes > 2, 4 = 2 * 2
    }; // size 17 --> 18 bytes, 18 % 2 = 0, rather than 24 bytes when pack(8)

    struct MyStruct2 {
        char a[10]; // size 13 bytes
        char b; // size 1 byte < 2
    }; // size 11 bytes, as if pack(1)
#pragma pack(pop) // 2 --> 8 bytes

    printf("size of MyStruct1: %llu bytes\n", sizeof(struct MyStruct1));
    printf("size of MyStruct2: %llu bytes\n", sizeof(struct MyStruct2));

    printf("\n=== Size of Struct | Data Storage Alignment ===\n");

    printf("size of myStruct1_t: %llu bytes, size of double: %llu bytes, size of int: %llu bytes\n",
           sizeof(myStruct1_t), sizeof(double), sizeof(int));
    printf("size of myStruct1_2_t: %llu bytes, size of double: %llu bytes, size of int: %llu bytes\n",
           sizeof(myStruct1_2_t), sizeof(double), sizeof(int));
    printf("size of myStruct2_t: %llu bytes, size of int: %llu bytes, size of char: %llu bytes\n",
        sizeof(myStruct2_t), sizeof(int), sizeof(char));
    printf("size of myStruct3_t: %llu bytes, size of double: %llu bytes, size of char: %llu bytes\n",
        sizeof(myStruct3_t), sizeof(double), sizeof(char));

    myStruct4_t st4;
    printf("size of myStruct4_t: %llu bytes, size of int array: %llu bytes, size of char: %llu bytes\n",
        sizeof(st4), sizeof(st4.x), sizeof(st4.y));

    myStruct5_t st5;
    printf("size of myStruct5_t: %llu bytes, size of double array: %llu bytes, size of char: %llu bytes\n",
        sizeof(st5), sizeof(st5.x), sizeof(st5.y));

    myStruct6_t st6;
    printf("size of myStruct6_t: %llu bytes, size of int : %llu bytes, size of char array: %llu bytes\n",
        sizeof(st6), sizeof(st6.x), sizeof(st6.y));

    /**
     * We can only store data in a single member at the same time. For example in the following C program,
     * both x and y share the same location. If we change x, we can see the changes being reflected in y.
     **/

    printf("\n=== How it stores data ===\n");

    printf("union {int x, int y};\n");
    myUnion1_t un1;
    un1.x = 4;
    printf("x: %d, y: %d\n", un1.x, un1.y);
    un1.y = 6;
    printf("x: %d, y: %d\n", un1.x, un1.y);

    printf("union {int x, double y};\n");
    myUnion2_t un2;
    un2.x = 4;
    printf("x: %d, y: %.2f\n", un2.x, un2.y);
    un2.y = 6.2;
    printf("x: %d, y: %.2f\n", un2.x, un2.y);

    /**
     * Unions can be useful in many situations where we want to use the same memory
     * for two or more members. For example, suppose we want to implement a binary
     * tree data structure where each leaf node has a double data value,
     * while each internal node has pointers to two children, but no data.
     **/

    printf("\n=== Benefits of Union over Struct ===\n");

    myNode1_t node1;
    printf("size of node: %llu, size of left ptr: %llu, size of right ptr: %llu, size of double: %llu\n",
        sizeof(node1), sizeof(node1.left), sizeof(node1.right), sizeof(node1.data));

    myNode2_t node2;
    printf("size of node: %llu, size of ptr struct: %llu, size of double: %llu, size of bool: %llu\n",
        sizeof(node2), sizeof(node2.content_union.ptr), sizeof(node2.content_union.data), sizeof(bool));

    /**
     * Print the type and value of the argument
     * struct + union --> create a blob variable type
     **/

    printf("\n=== Print the type and value of the argument ===\n");

    printf("size of blob_t: %llu bytes\n", sizeof(blob_t));

    printf("\n=== Store the type of a variable when assignment ===\n");
    int num = 77;
    double my_pi = 3.14;
    char ch_arr[6] = "Hello";

    blob_t blob_var1, blob_var2, blob_var3, blob_var4;
    blob_var1.type = INT;
    blob_var1.i = num;
    blob_var2.type = DOUBLE;
    blob_var2.db = my_pi;
    blob_var3.type = CHAR;
    blob_var3.c = ch_arr[3];
    blob_var4.type = STRING;
    blob_var4.s = ch_arr;
    print_var_type_and_value(&blob_var1);
    print_var_type_and_value(&blob_var2);
    print_var_type_and_value(&blob_var3);
    print_var_type_and_value(&blob_var4);

    printf("\n=== ===\n");

    printf("size of int64: %llu, align of int64: %llu\n",
        sizeof(__int64), __alignof(__int64));
    printf("size of char: %llu, align of char: %llu\n",
        sizeof(char), __alignof(char));

    return 0;
}
