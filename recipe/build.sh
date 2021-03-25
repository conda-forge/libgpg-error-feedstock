#!/usr/bin/env bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux

set -e -o pipefail -x

./configure --prefix=$PREFIX

make
make install
make -v -v -v check
