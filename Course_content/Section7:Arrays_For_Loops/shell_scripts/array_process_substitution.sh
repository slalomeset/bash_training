#!/bin/bash

# process substitution
mkdir array

touch ./array/file{001..100}.txt

readarray files < <(ls ./array/*)
echo ${!files[@]}
echo ${files[@]}
