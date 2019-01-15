# segfault

Make a giant file (you may have to fiddle with the size to use, based on your system):

```
head -c 10MiB /dev/urandom > myfile.png
```

Run nix-build

```
nix-build
```

## Smaller example

Put `./Lib.hs` in the right place:
Within the `--keep-failed` of nix.

Then run

```
/nix/store/6j6slxdhbbzxvhkn6yf7afm62r8n9fmf-ghc-8.4.3/bin/ghc --make -hide-all-packages -no-user-package-db -package-db /tmp/nix-build-segfault-0.0.0.drv-2/package.conf.d -package-db dist/package.conf.inplace -package-id base-4.11.1.0 -package-id bytestring-0.10.8.2 src/Lib.hs -j12 +RTS -K 
```

And see

```
[1 of 1] Compiling Lib              ( src/Lib.hs, src/Lib.o )
Segmentation fault (core dumped)
```
