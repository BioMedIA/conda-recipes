#!/usr/bin/env bash

rsync -aPq "include/tbb" "$PREFIX/include/"
rsync -aPq "include/serial" "$PREFIX/include/"

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # On Linux, there's more variability, so lets build from scratch
  make -j$CPU_COUNT prefix=$PREFIX
  mkdir -p $PREFIX/lib/ && cp build/linux*_release/*.so* $PREFIX/lib/
fi
if [ "$(uname -s)" == "Darwin" ]; then
  # On OSX, just copy the pre-built binaries
  DYNAMIC_EXT="dylib"
  rsync -aPq lib/*.dylib $PREFIX/lib
fi

