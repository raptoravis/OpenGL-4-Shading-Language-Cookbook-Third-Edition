@echo off

rem cmake -S ./thirdparty/glm-0.9.9.6 -B ./build/win64/thirdparty/glm-0.9.9.6 -G "Visual Studio 15 2017 Win64" -DGLM_TEST_ENABLE=OFF
rem cmake --build ./build/win64/thirdparty/glm-0.9.9.6

rem cmake -S ./thirdparty/glfw-3.3 -B ./build/win64/thirdparty/glfw-3.3 -G "Visual Studio 15 2017 Win64" -DGLM_TEST_ENABLE=OFF
rem cmake --build ./build/win64/thirdparty/glfw-3.3

rem ./sln-generate.bat
cmake -DGLM_TEST_ENABLE=OFF -DBUILD_SHARED_LIBS=OFF -S . -B ./build/win64 -G "Visual Studio 15 2017 Win64"

cmake --build ./build/win64