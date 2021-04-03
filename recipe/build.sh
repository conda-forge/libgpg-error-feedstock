#!/usr/bin/env bash
# Get an updated config.sub and config.guess
# cp $BUILD_PREFIX/share/libtool/build-aux/config.* ./build-aux

set -e -o pipefail -x

autoreconf -if
./configure --prefix=$PREFIX

make
make install
make -v -v -v check
