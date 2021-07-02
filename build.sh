#!/system/bin/sh
# (Used to build with libllvm/clang in pwn-term)
set -e
# Feel free to comment out things after first usage

# Make outdir
cd ..
mkdir -p out
cd out

# Configure
./../gcc/configure --enable-languages=c,c++,fortran --with-system-zlib --disable-multilib --target=aarch64-linux-android --with-gmp=/data/data/hilled.pwnterm/files/usr --with-mpfr=/data/data/hilled.pwnterm/files/usr --with-mpc=/data/data/hilled.pwnterm/files/usr --with-stage1-ldflags=\"-specs=/data/data/hilled.pwnterm/files/usr/pwn.spec\" --with-isl-include=/data/data/hilled.pwnterm/files/usr/include --with-isl-lib=/data/data/hilled.pwnterm/files/usr/lib --disable-isl-version-check --disable-tls --enable-host-shared --enable-host-libquadmath --enable-default-pie --with-arch=armv8-a --prefix=/data/data/hilled.pwnterm/files/usr1 --exec-prefix=/data/data/hilled.pwnterm/files/usr1;

# export's
export CFLAGS_FOR_TARGET=" -I/data/data/hilled.pwnterm/files/usr/include/isl -specs=/data/data/hilled.pwnterm/files/usr/pwn.spec -Os -fbracket-depth=512";
export CPPFLAGS_FOR_TARGET="-I/data/data/hilled.pwnterm/files/usr/include -I/data/data/hilled.pwnterm/files/usr/include/isl";
export CXXFLAGS_FOR_TARGET="-specs=/data/data/hilled.pwnterm/files/usr/pwn.spec -Os -fbracket-depth=512";
export LDFLAGS_FOR_TARGET=" -specs=/data/data/hilled.pwnterm/files/usr/pwn.spec -L/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib";
export PKG_CONFIG_FOR_TARGET="pkg-config";
export LD_FOR_BUILD="ld";
export CXXFLAGS="-fbracket-depth=512";
export CFLAGS="-fbracket-depth=512";

# Make
make all-gcc CFLAGS="-fbracket-depth=512" CXXFLAGS="-fbracket-depth=512";

make install-gcc;
