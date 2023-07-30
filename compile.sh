#!/bin/bash

# Set the compiler and compilation flags
COMPILER=g++
CXX_FLAGS="-std=c++11 -Wall"

# Source files and output binary
SOURCE_FILES="main.cpp functions.cpp"
OUTPUT_BINARY="my_cpp_program"

# Function to display messages in red color
function print_error {
  echo -e "\e[1;31m$1\e[0m"
}

# Compile the C++ code
echo -e "\e[1;34mMY_CPP_PROGRAM\e[0m"
if $COMPILER $CXX_FLAGS $SOURCE_FILES -o $OUTPUT_BINARY; then
  echo -e "\e[1;32mCompilation successful. Executable '$OUTPUT_BINARY' created.\e[0m"
else
  print_error "Compilation failed. See the error messages above."
fi

# Generate .sym file
$COMPILER -g $SOURCE_FILES -o Binary/bin/$OUTPUT_BINARY.sym

# Move the binary and .sym file to Binary/bin directory
mv $OUTPUT_BINARY Binary/bin/


