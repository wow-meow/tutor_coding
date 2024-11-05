Address Values

- In C, when you have an array like `arr1_stack`, the expressions `&arr1_stack`,
`arr1_stack`, and `&arr1_stack[0]` often have the same numerical address value when
printed using %p in printf.

- The reason is that an array name (`arr1_stack`) in most contexts "decays" into a
pointer to its first element. So `arr1_stack` is treated the same as
`&arr1_stack[0]` in terms of the address they represent.

- The expression `&arr1_stack` gives the address of the entire array. However, the
address of the entire array and the address of its first element are the same
in terms of the numerical value.

Type Differences

- `&arr1_stack`: The type of `&arr1_stack` is a pointer to an array of N integers
  (`int (*)[N]`). When you perform pointer arithmetic on `&arr1_stack`, the
  increment or decrement is based on the size of the entire array. For example,
  if p = `&arr1_stack` and you do p++, the pointer p will move forward by the
  size of the entire array (N * sizeof(int)).

- `arr1_stack`: When used in most pointer - related contexts, `arr1_stack` decays
  to a pointer to its first element. So its type is effectively a pointer to an
  integer (`int *`). When you perform pointer arithmetic on `arr1_stack` (or the
  decayed pointer), an increment (`arr1_stack`++ which is not recommended as it
  changes the array name) or decrement moves the pointer to the next or
  previous integer element. That is, it moves forward or backward by
  sizeof(int) bytes.

- `&arr1_stack[0]`: The type of `&arr1_stack[0]` is a pointer to an integer (int
  *). Pointer arithmetic on `&arr1_stack[0]` is the same as on the decayed
  `arr1_stack` pointer, moving by sizeof(int) bytes for each increment or
  decrement.
