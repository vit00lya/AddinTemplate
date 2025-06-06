#!/bin/sh

mkdir build32Lin
cd build32Lin
cmake -D CMAKE_BUILD_TYPE:STRING=Release -D TARGET_PLATFORM_32:BOOL=ON ..
cmake --build .
cd ..

mkdir build64Lin
cd build64Lin
cmake -D CMAKE_BUILD_TYPE:STRING=Release -D TARGET_PLATFORM_32:BOOL=OFF ..
cmake --build .
cd ..
