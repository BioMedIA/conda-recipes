#!/bin/bash

mkdir build
cd build

#/vol/biomedic/users/kpk09/gitlab/irtk/build 
#       -D IRTK_INCLUDE_DIRS:DIRPATH=$PREFIX/include/                    \

cmake -D IRTK_DIR=$PREFIX/lib/                                     \
      -D PNG_LIBRARY:FILEPATH=$PREFIX/lib/libpng.so                    \
      -D TBB_INCLUDE_DIRS:DIRPATH=$PREFIX/include/                     \
      -D TBB_LIBRARY_DIRS:DIRPATH=$PREFIX/lib                          \
      ..

make VERBOSE=1 #-j $CPU_COUNT

cd ..

$PYTHON setup.py install

