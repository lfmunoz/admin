#!/bin/bash

# This script takes a folder path as the first argument
# and an optional name. It creates a compressed bz2 file
# of the folder and all its contents.

if [ -z "$1" ]; then
    echo "No argument supplied"; 
    echo "./script [folder_to_compress] <name_to_give_file>"
else
    echo Compressing the folder \'$1\'
    date=`date +%m_%d_%y`
    if [ -z "$2" ]; then
        name=file_$date.tar.bz2;
    else
        name=./$2_$date.tar.bz2;
    fi
    
    tar -cjf $name $1
    echo "Compression sucessful";
fi

