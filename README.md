BUILDS MILKYWAY WINDOWS APP (ATI only, not NVidia)

Do exactly as instructed in the README.md here
https://github.com/Milkyway-at-home/milkywayathome_client

Before step 3 do the folowing

sudo apt-get install opencl-headers

the above creats a folder at /usr/include/CL

The folder is correct but the location needs to be changed

Create /usr/include/OpenCL

move the CL folder into that directory

Using a windows computer download the OCL_SDK_Light.exe here

https://github.com/GPUOpen-LibrariesAndSDKs/OCL-SDK/releases/tag/1.0

Run the program and get the opencl.lib file which can be found here
C:\Program Files (x86)\OCL_SDK_Light\lib\x86_64>

Using ftp or a USB flash to copy that file to your build directory

create a run_cmake.sh to look something like the following

#!/bin/bash

cmake -DCMAKE_TOOLCHAIN_FILE="../milkywayathome_client/cmake_modules/MinGW32-Cross-Toolchain.cmake" \

-DBUILD_32=OFF -DSEPARATION_OPENCL=ON -DSEPARATION_STATIC=ON -DOPENCL_LIBRARIES=/where1/opencl.lib  \

-DOPENCL_INCLUDE_DIRS=/where2/OpenCL  ../milkywayathome_client/

----or just download the files I got here if you trust this repositiory----
feel free to make any suggestions especially if you get a better library than the one I found
note that the library was ATI as AMD recommen ded the OCL light SDK
