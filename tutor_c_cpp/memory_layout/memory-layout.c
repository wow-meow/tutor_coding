#include <stdio.h>
#include <stdlib.h> // free()
		    
//#define STORED_IN_INITIALIZED_DATA_SEGMENT
//#define STORED_IN_BSS
//#define STORED_IN_STACK
#define STORED_IN_HEAP

#ifdef STORED_IN_INITIALIZED_DATA_SEGMENT
// initialized global vars, stored in the Initialized Data Segment (DS)
int g_integer_initialized = 9;
#endif //STORED_IN_INITIALIZED_DATA_SEGMENT

#ifdef STORED_IN_BSS
// uninitialized global vars, stored in "Block Started by Symbols" (bss)
int g_integer_uninitialized;
int g_integer_array_uninitialized[100];
float g_float_uninitialized;
#endif //STORED_IN_BSS
	       

int main(void) {

#ifdef STORED_IN_INITIALIZED_DATA_SEGMENT
  // initialized static vars, stored in Initialized Data Segment (data)
  static int sIntIni = 99;
  static int sIntArrIni[100]{};
#endif //STORED_IN_INITIALIZED_DATA_SEGMENT

#ifdef STORED_IN_BSS
  static int s_integer_uninitialized;
#endif //STORED_IN_BSS

#ifdef STORED_IN_STACK
  // local vars, both initialized and uninitialized, stored in stack
  int integer1 = 1;
  int integer2;
  int integer_array[100];
#endif //STORED_IN_STACK

#ifdef STORED_IN_HEAP
  // dynamic allocated vars, stored in heap
  int len1 = 100;
  int *arr1 = malloc(len1 * sizeof(*arr1));
  // always = 2, since a pointer takes 8 bytes, an integer takes 4 bytes
  int len1_computed = sizeof(arr1) / sizeof(*arr1);
  printf("len1 computed: %d\n", len1_computed);

  int arr2[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 };
  ptrdiff_t diff_ptr_addr = *(&arr2 + 1) - arr2;
  printf("&arr + 1: 0x%p, *(&arr + 1): 0x%p, **(&arr + 1): %d\n"
         "&arr: 0x%p, arr: 0x%p, *arr: %d, \n"
         "ptr diff: %llu\n",
         &arr2 + 1, *(&arr2 + 1), **(&arr2 + 1),
         &arr2, arr2, *arr2,
         diff_ptr_addr);

  for (int i = 0; i < len1; ++i) {
    arr1[i] = i * i;
  }
  //for (int i = 0; i < nItems; ++i) {
  //  printf("[%d]: %d, ", i, pIntArr[i]);
  //}
  //printf("\n");
  free(arr1);
#endif //STORED_IN_HEAP

  return 0;
}