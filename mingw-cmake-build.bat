rem mingw-make-generate.bat
cmake -S . -B ./build/mingw -G "MinGW Makefiles"

cd ./build/mingw

mingw32-make
