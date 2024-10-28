#include <stdio.h>

typedef enum my_type {
    INT, DOUBLE, CHAR,
} typeEnum;

// struct + union
typedef struct my_blob_struct {
    typeEnum type;
    union my_data_union {
        double db_val;
        int n_val;
        char ch_val;
    } data;
} blob_t;

// struct + union
typedef struct my_blob2_struct {
    typeEnum type;
    union {
        double db_val;
        int n_val;
        char ch_val;
    };
} blob2_t;

// struct + (void *) pointer
typedef struct my_variable_type_pointer_struct {
    typeEnum type;
    void *data;
} var_type_ptr_t;

void print_var_type_and_value(const blob_t *var) {
    switch (var->type) {
        case INT:
            printf("int %d\n", var->data.n_val);
            break;
        case DOUBLE:
            printf("double %f\n", var->data.db_val);
            break;
        case CHAR:
            printf("char %c\n", var->data.ch_val);
            break;
        default:
            break;
    }
}

void print_var_type_and_value_2(const blob2_t *var) {
    switch (var->type) {
        case INT:
            printf("int %d\n", var->n_val);
            break;
        case DOUBLE:
            printf("double %f\n", var->db_val);
            break;
        case CHAR:
            printf("char %c\n", var->ch_val);
            break;
        default:
            break;
    }
}

/* [How do I check if a variable is of a certain type (compare two types) in C? - Stack Overflow](https://stackoverflow.com/questions/6280055/how-do-i-check-if-a-variable-is-of-a-certain-type-compare-two-types-in-c)
 * */
// _Generic

int main(void) {
    printf("== Show the type of a variable ==\n");

    printf("=== Store the type of a variable when assignment ===\n");
    int num = 77;
    double my_pi = 3.14;
    char ch_arr[6] = "Hello";

    blob_t blob_var1, blob_var2, blob_var3;
    blob_var1.type = INT;
    blob_var1.data.n_val = num;
    blob_var2.type = DOUBLE;
    blob_var2.data.db_val = my_pi;
    blob_var3.type = CHAR;
    blob_var3.data.ch_val = ch_arr[3];
    print_var_type_and_value(&blob_var1);
    print_var_type_and_value(&blob_var2);
    print_var_type_and_value(&blob_var3);

    blob2_t blob2_var1, blob2_var2, blob2_var3;
    blob2_var1.type = INT;
    blob2_var1.n_val = num;
    blob2_var2.type = DOUBLE;
    blob2_var2.db_val = my_pi;
    blob2_var3.type = CHAR;
    blob2_var3.ch_val = ch_arr[3];
    print_var_type_and_value_2(&blob2_var1);
    print_var_type_and_value_2(&blob2_var2);
    print_var_type_and_value_2(&blob2_var3);

    printf("=== _Generic() : Get the type of a variable ===\n");

    return 0;
}
