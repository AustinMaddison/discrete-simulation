#!/bin/bash

# Get the current working directory name
cwd_name=$(basename "$PWD")

# Define the source directory (you can change this to your actual source path)
source_directory="source" # Change this to your actual source path

# Define the PDF file to include
pdf_file="typeset/${cwd_name}_answers.pdf"

# Define the output zip file name
zip_file="${cwd_name}_austin.zip"

# Create the zip file including all files from the source directory and the PDF
zip -r "$zip_file" "$source_directory"/* "$pdf_file"

# Output the result
if [ $? -eq 0 ]; then
    echo "Successfully created $zip_file"
else
    echo "Failed to create $zip_file"
fi