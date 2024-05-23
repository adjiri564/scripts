#!/bin/bash

# Ask for the directory name
read -p "Enter the directory name: " dirname

# Check if directory already exists
if [ -d "$dirname" ]; then
    echo "Directory $dirname already exists."
else
    # Create the directory
    mkdir $dirname
    
    # Change to the created directory
    cd $dirname

    # Create three files with extensions .html, .css, .js
    touch index.html style.css script.js

    echo "Directory $dirname created with files index.html, style.css, and script.js"
fi