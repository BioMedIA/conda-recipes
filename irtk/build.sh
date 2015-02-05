#!/bin/bash

mkdir build
cd build
cmake                                                               \
    -DPNG_LIBRARY:FILEPATH=$PREFIX/lib/libpng.so                    \
    -DPNG_PNG_INCLUDE_DIR:DIRPATH=$PREFIX/include                   \
    -D BUILD_WITH_PNG=ON                                            \
    -D WRAP_CYTHON=ON                                               \
    -D BUILD_TESTS=OFF                                              \
    -D BUILD_RVIEW=OFF                                              \
    -DCMAKE_INSTALL_PREFIX=$PREFIX                                  \
    ..
make -j$CPU_COUNT
make install
