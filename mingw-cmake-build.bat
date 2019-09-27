@echo off

rem .\mingw-cmake-generate.bat
cmake -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/mingw -G "MinGW Makefiles"

rem cd ./build/mingw
rem mingw32-make
rem cd ../..
cmake --build ./build/mingw 

