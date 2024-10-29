### Difference between C Structure and C Union

| Structure                                                                                   | Union                                                    |
|---------------------------------------------------------------------------------------------|----------------------------------------------------------|
| The size of the structure is equal to or greater than the total size of all of its members. | The size of the union is the size of its largest member. |
| The structure can contain data in multiple members at the same time.                        | Only one member can contain data at the same time.       |
| It is declared using the struct keyword.                                                    | It is declared using the union keyword.                  |

64 bit computers have 8 byte pointers. if you vary str[] you will see it increases by increments of 8. (`char str[9]` returns size 16).

[CSDN_explain](https://blog.csdn.net/firefly_2002/article/details/7954458)

结论：复合数据类型，如union, struct, class的对齐方式为成员中对齐方式最大的成员的对齐方式。

顺便提一下CPU对界问题，32-bit C++ 采用 8 位对界来提高运行速度，所以编译器会尽量把数据放在它的对界上以提高内存命中率.
对界是可以更改的，使用 #pragma pack(x) 宏可以改变编译器的对界方式, 默认是8. C++
固有类型的对界取编译器对界方式与自身大小中较小的一个. 例如, 指定编译器按2对界, int 类型的大小是4, 则int的对界为2和4中较小的2.
在默认的对界方式下, 因为几乎所有的数据类型都不大于默认的对界方式8 (除了long double),
所以所有的固有类型的对界方式可以认为就是类型自身的大小.

What about 64-bit C/C++?

更改一下上面的程序：

``` cpp
#pragma pack(2)
union u2 {
　char a[13];
　int b;
};

union u3 {
　char a[13];
　char b;
};
#pragma pack(8)

cout<<sizeof(u2)<<endl; // 14 由于手动更改对界方式为2，所以int的对界也变成了2，u2的对界取成员中最大的对界，也是2了，所以此时sizeof(u2)=14。
cout<<sizeof(u3)<<endl; // 13 ，char的对界为1
```

结论：C++固有类型的对界取编译器对界方式与自身大小中较小的一个。

- [你所不知道的 C 語言：記憶體管理、對齊及硬體特性 - HackMD](https://hackmd.io/@sysprog/c-memory) 
- [Structure Member Alignment, Padding and Data Packing - GeeksforGeeks](https://www.geeksforgeeks.org/structure-member-alignment-padding-and-data-packing/)
- [Structure Alignment and Packing in C Programming | Tachyon](https://grandidierite.github.io/structure-alignment-and-packing-in-C-programming/)
 