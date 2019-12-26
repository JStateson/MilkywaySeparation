#!/bin/bash
cmake -DCMAKE_TOOLCHAIN_FILE="../milkywayathome_client/cmake_modules/MinGW32-Cross-Toolchain.cmake" \
 -DBUILD_32=OFF -DSEPARATION_OPENCL=ON -DSEPARATION_STATIC=ON -DOPENCL_LIBRARIES=/where-ever1/opencl.lib  \
 -DOPENCL_INCLUDE_DIRS=/where-ever2/OpenCL  ../milkywayathome_client/
