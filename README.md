
### Notes / Guide
* GCC README [Here](https://github.com/PWN-Term/gcc/blob/gcc-11.1.0/README_GCC)

#### Patching
* Some patches are needed to be applied for pwn includes as ndk has its own modifications that gcc cant read/see so it will throw errors
    * cd into gcc source code and run patches (1.patch until 1)

    ```
    $ patch -p1 < patches/includes/1.patch
    ```

#### Compiling
* Configuring the build

```
./build-configure.sh
```

* Compiling

```
./build.sh
```
* Installing

```
./build.sh
```

#### Credits
* Base-patches: https://github.com/its-pointless
