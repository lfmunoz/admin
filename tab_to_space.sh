#!/bin/bash

# This script takes a folder path as the first argument
# and converts tabs to spaces in any file recursively
# with the specified file extension *.vhd

if [ -z "$1" ]; then
    echo "No argument supplied"; 
    echo "./script [folder_to_start_conversion]"
else
    echo Beginning conversions in the folder \'$1\'
    find $1 -type f -name "*.vhd" -print0 | while read -d $'\0' file
    do
      echo "$file"
      expand -t 4 "$file" > "$file.tmp"
      mv "$file.tmp" "$file"
    done
fi

