## References

[遇到 warning: LF will be replaced by CRLF in …… 該怎麼辦？ | by Noel.H | Medium](https://noelhsiao.medium.com/%E9%81%87%E5%88%B0-warning-lf-will-be-replaced-by-crlf-in-%E8%A9%B2%E6%80%8E%E9%BA%BC%E8%A7%A3-ab9882ee07be)

## Commands

``` shell
# see autocrlf config, false or true
$ git config –-global core.autocrlf
# set it false
$ git config –-global core.autocrlf false

# list all added files in git, show their "end-of-line"
$ git ls-files --eol

```

``` shell
$ cat --help
$ cat -v textfile
$ cat -e textfile

# lf --> crlf
$ unix2dos

# crlf --> lf
$ dos2unix

```

VSCode editor setting --> eol : '\n'
