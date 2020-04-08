#!/bin/sh

# Create build folder if it not already exists
mkdir --parents ./build
cd build

# Create makefile
echo 'Create Makefile \n \n'
# Create makefile for debugging
cmake -DCMAKE_BUILD_TYPE=Debug ..
# Create makefile for release
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build Project
echo '\n Build Project \n \n'
make


