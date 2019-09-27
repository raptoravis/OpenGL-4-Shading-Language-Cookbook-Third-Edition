

rem DBUILD_SHARED_LIBS is used for glfw static
rem cmake -DCMAKE_BUILD_TYPE=Debug -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/mingw -G "MinGW Makefiles"
cmake -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/mingw -G "MinGW Makefiles"
