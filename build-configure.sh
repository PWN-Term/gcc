#!/system/bin/sh

mkdir -p ../out
cd ../out

echo "Running distclean just in case"
#make distclean

echo "Running configure"
./../gcc/configure --enable-languages=c,c++ --with-system-zlib --disable-multilib --target=aarch64-linux-android --with-gmp=/data/data/hilled.pwnterm/files/usr --with-mpfr=/data/data/hilled.pwnterm/files/usr --with-mpc=/data/data/hilled.pwnterm/files/usr --with-stage1-ldflags=\"-specs=/sdcard/specs\" --with-isl-include=/data/data/hilled.pwnterm/files/usr/include --with-isl-lib=/data/data/hilled.pwnterm/files/usr/lib --disable-isl-version-check --disable-tls --enable-host-shared --enable-host-libquadmath --enable-default-pie --with-arch=armv8-a --prefix=/data/data/hilled.pwnterm/files/usr --exec-prefix=/data/data/hilled.pwnterm/files/usr --with-sysroot=/data/data/hilled.pwnterm/files --with-build-sysroot=/data/data/hilled.pwnterm/files

echo "Configuring done now run build.sh"
