# sponge

Buffer standard input to a file. Useful for redirecting output of a pipe chain to the same input file.

```sh
$ grep -v 'a' foo.txt | sponge foo.txt
```
