#!/system/bin/sh

mkdir -p ../out
cd ../out

export CFLAGS_FOR_TARGET="-specs=/sdcard/specs -I/data/data/hilled.pwnterm/files/usr/include/isl -specs=/sdcard/specs -Os -fbracket-depth=512"
export CPPFLAGS_FOR_TARGET="-Os -I/data/data/hilled.pwnterm/files/usr/include -I/data/data/hilled.pwnterm/files/usr/include/isl"
export CXXFLAGS_FOR_TARGET="-Os -fbracket-depth=512"
export LDFLAGS_FOR_TARGET=" -specs=/sdcard/specs -L/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib"
export PKG_CONFIG_FOR_TARGET="pkg-config"
export ORIGINAL_AS_FOR_TARGET="/data/data/hilled.pwnterm/files/usr/bin/as"
export CC="gcc"
export LD_FOR_BUILD="ld"
export AR_FOR_TARGET="ar"
export RANLIB_FOR_TARGET="ranlib"
export CC_FOR_TARGET="gcc"
export AS_FOR_TARGET="as"
export CXX_FOR_TAGET="g++"
export CPP_FOR_TARGET="cpp"

echo "Running configure"
./../gcc/configure --enable-languages=c,c++ --with-system-zlib --disable-multilib --target=aarch64-linux-android --with-gmp=/data/data/hilled.pwnterm/files/usr --with-mpfr=/data/data/hilled.pwnterm/files/usr --with-mpc=/data/data/hilled.pwnterm/files/usr --with-stage1-ldflags=\"-specs=/sdcard/specs\" --with-isl-include=/data/data/hilled.pwnterm/files/usr/include --with-isl-lib=/data/data/hilled.pwnterm/files/usr/lib --disable-isl-version-check --disable-tls --enable-ld --enable-host-libquadmath --enable-default-pie --with-arch=armv8-a --prefix=/data/data/hilled.pwnterm/files/usr --exec-prefix=/data/data/hilled.pwnterm/files/usr --with-sysroot=/data/data/hilled.pwnterm/files --with-build-sysroot=/data/data/hilled.pwnterm/files

echo "Configuring done now run build.sh"
