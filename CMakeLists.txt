# Resources for creating this file:
# https://cmake.org/cmake/help/v3.9/manual/cmake-toolchains.7.html?highlight=cmake_c_compiler
# https://hackaday.com/2016/02/03/code-craft-cross-compiling-for-the-raspberry-pi/
# https://blog.kitware.com/cross-compiling-for-raspberry-pi/
#
# Resources for cross debugging:
# https://medium.com/@spe_/debugging-c-c-programs-remotely-using-visual-studio-code-and-gdbserver-559d3434fb78


# Minimum CMake version required to generate the build system
cmake_minimum_required(VERSION 3.10)

# Set target platform
set(CMAKE_SYSTEM_NAME Linux)
# Set target architecture
set(CMAKE_SYSTEM_PROCESSOR arm)

# Name of the project
project(Hello_RPi)

# Set cross compiler
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Custom build flags for release and debug
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall")

add_executable(${PROJECT_NAME} ./src/main.cpp)
