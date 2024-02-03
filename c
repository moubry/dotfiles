#!/bin/bash

# Store the command-line arguments into a string
file_name="$1.c"

# Open the file in vi for editing
nvim "$file_name"

# Create a temporary file for the compiled program and store its name
compiled_program=$(mktemp)

# Compile the C file and specify the output executable to be the temp file
gcc -o "$compiled_program" "$file_name"

# Run the compiled program
"$compiled_program"

# Clean up the compiled program
rm "$compiled_program"

