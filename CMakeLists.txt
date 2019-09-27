cmake_minimum_required (VERSION 3.0)

set (CMAKE_CXX_STANDARD 17)
set(CXX_STANDARD_REQUIRED ON)

project (GLSLCOOKBOOK)

IF(MINGW)
  set(CMAKE_BUILD_TYPE "Debug")
  SET(CMAKE_C_FLAGS  ${CMAKE_C_FLAGS} "-g")
  SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-g")
ELSE(MINGW)
  #
ENDIF(MINGW)

add_subdirectory( thirdparty/glm-0.9.9.6 )
add_subdirectory( thirdparty/glfw-3.3 )

include_directories( thirdparty/glm-0.9.9.6/
				thirdparty/glfw-3.3/include)

if(MSVC)
  add_definitions(/DNOMINMAX)
endif()

if(UNIX)
    message(STATUS "Running Linux compiling. Options [GLVND] for modern OpenGL or [LEGACY] for historical OpenGl.")
    message(STATUS "Setting GLVND option.")
    set(OpenGL_GL_PREFERENCE GLVND)
endif()

#find_package( glm CONFIG REQUIRED )
#find_package( glfw3 CONFIG REQUIRED )
find_package( OpenGL REQUIRED )

include_directories( ingredients )

add_subdirectory( ingredients )
add_subdirectory( chapter01 )
add_subdirectory( chapter02 )
add_subdirectory( chapter03 )
add_subdirectory( chapter04 )
add_subdirectory( chapter05 )
add_subdirectory( chapter06 )
add_subdirectory( chapter07 )
add_subdirectory( chapter08 )
add_subdirectory( chapter09 )
add_subdirectory( chapter10 )
add_subdirectory( chapter11 )

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/media DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
