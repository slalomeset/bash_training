#!/bin/bash

# readarray command

# readarray days < days.txt
# -t option to remove \n EOF caracter
readarray -t days < days.txt
echo ${!days[@]}
echo ${days[@]}
echo ${days[@]@Q}