# segfault

Make a giant file (you may have to fiddle with the size to use, based on your system):

```
head -c 10MiB /dev/urandom > myfile.png
```

Run nix-build

```
nix-build
```
