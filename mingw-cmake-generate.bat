

rem DBUILD_SHARED_LIBS is used for glfw static
cmake -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/mingw -G "MinGW Makefiles"
