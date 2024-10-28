## References:

- https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/ 
- https://www.geeksforgeeks.org/sed-command-linux-set-2/

## SED

``` shell
sed 's/unix/linux/' geekfile.txt # replace the first match on each line
sed 's/unix/linux/' < geekfile.txt " the same output to the console
sed 's/unix/linux/g' geekfile.txt # replace all matches on each line, global replacement
sed 's/unix/linux/2g' geekfile.txt # replace matches starting from the 2nd match on each line
```

``` shell
# delimiter choices: {'/', '#', ','}
sed 's/\b[A-Za-z]/(\0)/g' geekfile.txt
sed 's#\b[A-Za-z]#(\0)#g' geekfile.txt
sed 's,\b[A-Za-z],(\0),g' geekfile.txt
```

``` shell
# match groups: \0, \1, \2 ...
sed 's,\(\b[A-Za-z]\),(\1),g' geekfile.txt
```

``` shell
# replace first char of each word, \b means boundary symbols (^ $ \. \, \s ...)
echo 'Welcome to The geek Stuff' | sed 's,\b[A-Za-z],(\0),4g'
```

``` shell
# specify the line number for replacement
sed '4 s/unix/linux/2g' geekfile.txt
```

``` shell
# specify the range of line numbers for replacement
sed '1,3 s/unix/linux/g' geekfile.txt
sed '2,$ s/unix/linux/g' geekfile.txt
```

``` shell
# delete lines containing a pattern
sed '2,$ /pattern/d' geekfile.txt
sed '2,$ /linux/d' geekfile.txt
```

``` shell
# insert a line after the pattern
sed '/unix/a\new line' geekfile.txt
sed '/linux/a\Hello, World' geekfile.txt
```

``` shell
# case-insensitive
sed 's/life/Love/i' a.txt
```

``` shell
# use sed in a bash script
#!/bin/bash
input="input.txt"
output="output.txt"
sed 's/old/new/g' "$input" > "$output"
```
