## References

- [Install gcc compiler on Windows with MSYS2 for C/C++ | DevDungeon](https://www.devdungeon.com/content/install-gcc-compiler-windows-msys2-cc)
- [How to get glibc version - C Lang - DEV Community](https://dev.to/bitecode/how-to-get-glibc-version-c-lang-26he)

## Notes

- [] union
- [] function pointer
- [] variadic function, variable argument list
- [] pass a function pointer to a variadic function as another function's argument
- [] C lang: concurrency, parallel, mulithreading
- [] generic programming


[Can I recover a branch after its deletion in Git? - Stack Overflow](https://stackoverflow.com/questions/3640764/can-i-recover-a-branch-after-its-deletion-in-git)

If you removed the branch and forgot its commit id, you can do this command:

``` shell
$ git log --graph --decorate $(git rev-list -g --all)
```

After this, you'll be able to see all commits. Then, you can do git checkout to this id and under this commit create a new branch.

[command line - How to apply dos2unix recursively to all the contents of a folder? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/279813/how-to-apply-dos2unix-recursively-to-all-the-contents-of-a-folder)

``` shell
find /path -type f -print0 | xargs -0 dos2unix --
```

#### _Generic keyword

[How do I check if a variable is of a certain type (compare two types) in C? - Stack Overflow](https://stackoverflow.com/questions/6280055/how-do-i-check-if-a-variable-is-of-a-certain-type-compare-two-types-in-c)
