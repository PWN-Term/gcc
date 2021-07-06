#!/system/bin/sh
# (Used to build with libllvm/clang in pwn-term)
set -e

cd ../out

# Configure exports

export CFLAGS_FOR_TARGET="-specs=/sdcard/specs -I/data/data/hilled.pwnterm/files/usr/include/isl -specs=/sdcard/specs -Os -fbracket-depth=512"
export CPPFLAGS_FOR_TARGET="-Os -I/data/data/hilled.pwnterm/files/usr/include -I/data/data/hilled.pwnterm/files/usr/include/isl"
export CXXFLAGS_FOR_TARGET="-Os -fbracket-depth=512"
export LDFLAGS_FOR_TARGET=" -specs=/sdcard/specs -L/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib -Wl,-rpath-link,/data/data/hilled.pwnterm/files/usr/lib"
export PKG_CONFIG_FOR_TARGET="pkg-config"

export CC="gcc"
export LD_FOR_BUILD="ld"
export AR_FOR_TARGET="ar"
export RANLIB_FOR_TARGET="ranlib"
export CC_FOR_TARGET="gcc"
export AS_FOR_TARGET="as"
export CXX_FOR_TAGET="g++"
export CPP_FOR_TARGET="cpp"

LD=${LD_FOR_TARGET}
AR=${AR_FOR_TARGET}
RANLIB=${RANLIB_FOR_TARGET}
CC=${CC_FOR_TARGET}
AS=${AS_FOR_TARGET}
CXX=${CXX_FOR_TARGET}
CFLAGS=${CFLAGS_FOR_TARGET} 
DFLAGS=${LDFLAGS_FOR_TARGET}
CPPFLAGS=${CPPFLAGS_FOR_TARGET}
CPP=${CPP_FOR_TARGET} 

# Make gcc
mkdir -p /data/data/hilled.pwnterm/files/usr/home/gcc-port
make install-gcc CFLAGS="-w -fbracket-depth=512 " CXXFLAGS="-w -fbracket-depth=512" DESTDIR=/data/data/hilled.pwnterm/files/usr/home/gcc-port
