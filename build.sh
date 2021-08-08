#!/data/data/hilled.pwnterm/files/usr/bin/bash

set -e

# Make outdir
cd ..
mkdir -p build-gcc
cd build-gcc

# Configure
./../gcc/configure --disable-dependency-tracking --prefix=/data/data/hilled.pwnterm/files/usr \
--libdir=/data/data/hilled.pwnterm/files/usr/lib --sbindir=/data/data/hilled.pwnterm/files/usr/sbin \
--disable-rpath --disable-rpath-hack --disable-dependency-tracking --disable-rpath \
--disable-rpath-hack --host=aarch64-linux-android --enable-languages=c,c++ \
--with-system-zlib --disable-multilib --target=aarch64-linux-android \
--with-gmp=/data/data/hilled.pwnterm/files/usr --with-mpfr=/data/data/hilled.pwnterm/files/usr \
--with-mpc=/data/data/hilled.pwnterm/files/usr --with-isl-include=/data/data/hilled.pwnterm/files/usr/include \
--with-isl-lib=/data/data/hilled.pwnterm/files/usr/lib --disable-isl-version-check --disable-libssp \
--disable-tls --enable-lto --enable-gold=yes --enable-libatomic --program-suffix=-11 --enable-libbacktrace 
--enable-host-shared --enable-host-libquadmath --enable-libatomic-ifuncs=no \
--with-libatomic --disable-libstdcxx --enable-version-specific-runtime-libs \
--enable-eh-frame-hdr-for-static --disable-libmpx \
-with-gxx-include-dir=/data/data/hilled.pwnterm/files/usr/include/c++/v1 --with-arch=armv8-a \
--enable-fix-cortex-a53-835769 --enable-fix-cortex-a53-843419 --enable-libssp --disable-nls \
--enable-shared --prefix=/data/data/hilled.pwnterm/files/usr --libdir=/data/data/hilled.pwnterm/files/usr/lib \
--sbindir=/data/data/hilled.pwnterm/files/usr/bin --libexecdir=/data/data/hilled.pwnterm/files/usr/libexec \
--with-arch=armv8-a --disable-nls --enable-shared --enable-static --enable-ld=yes --enable-gold=yes \
--oldincludedir=/data/data/hilled.pwnterm/files/usr/include \
--includedir=/data/data/hilled.pwnterm/files/usr/include --enable-maintainer-mode

# export's
export CFLAGS_FOR_TARGET=" -I/data/data/hilled.pwnterm/files/usr/include/isl -specs=/data/data/hilled.pwnterm/files/usr/lib/specs"
export CPPFLAGS_FOR_TARGET="-I/data/data/hilled.pwnterm/files/usr/include -I/data/data/hilled.pwnterm/files/usr/include/isl"
export CXXFLAGS_FOR_TARGET="-specs=/data/data/hilled.pwnterm/files/usr/lib/specs"
export LDFLAGS_FOR_TARGET=" -specs=/data/data/hilled.pwnterm/files/usr/lib/specs -L/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib"
export PKG_CONFIG_FOR_TARGET="pkg-config"
export LD_FOR_BUILD="ld"

# Make
make all-gcc

mkdir -p /data/data/hilled.pwnterm/files/usr/home/destdir

make DESTDIR=/data/data/hilled.pwnterm/files/usr/home/destdir
