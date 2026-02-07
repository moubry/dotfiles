#!/bin/bash

# Store the command-line arguments into a string
file_name="$1.c"

file_contents=$(cat $file_name)

# Open the file in vi for editing
nvim "$file_name"

# Create a temporary file for the compiled program and store its name
compiled_program=$(mktemp)

# Dynamically autolink against a subset of the most common libraries
build_flags=""
if [[ $file_contents == *"#include <curl/curl.h>"* ]]; then
	build_flags="$build_flags -lcurl"
fi

# Compile the C file and specify the output executable to be the temp file
gcc -o "$compiled_program" "$file_name" $build_flags

# Run the compiled program
"$compiled_program"

# Clean up the compiled program
rm "$compiled_program"

