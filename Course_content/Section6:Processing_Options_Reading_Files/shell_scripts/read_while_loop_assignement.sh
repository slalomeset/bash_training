#!/bin/bash

target_dir=$(pwd)/assignement
mkdir ${target_dir}

while read line;
do
    echo "$line" 
    mkdir "$target_dir"/"$line"
done < "$1"