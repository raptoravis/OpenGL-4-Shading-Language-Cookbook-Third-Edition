
rem .\mingw-cmake-generate.bat
cmake -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/mingw -G "MinGW Makefiles"

cd ./build/mingw

mingw32-make

cd ../..

