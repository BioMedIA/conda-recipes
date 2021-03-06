#!/bin/bash

mkdir build2
cd build2

cmake                                                              \
    -D PNG_LIBRARY_DIR:FILEPATH=$PREFIX/lib/                   \
    -D PNG_PNG_INCLUDE_DIR:DIRPATH=$PREFIX/include                  \
    -D BUILD_WITH_PNG=ON                                            \
    -D BUILD_WITH_TBB=ON                                            \
    -D BUILD_WITH_VTK=ON                                            \
    -D VTK_DIR=/Users/kevin/anaconda/lib/vtk-5.10/ \
    -D Boost_INCLUDE_DIR=/Users/kevin/anaconda/include/ \
    -D TBB_DEPRECATED=1                                             \
    -D TBB_INCLUDE_DIRS:DIRPATH=$PREFIX/include/                    \
    -D TBB_LIBRARY_DIRS:DIRPATH=$PREFIX/lib                         \
    -D WRAP_CYTHON=ON                                               \
    -D BUILD_TESTS=OFF                                              \
    -D BUILD_RVIEW=OFF                                              \
    -D CMAKE_INSTALL_PREFIX=$PREFIX                                 \
    -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH=$PREFIX                    \
    ..

make VERBOSE=1 -j$CPU_COUNT

make install
