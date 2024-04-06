#!/bin/bash

# create an array
echo "# create an array"
echo "numbers=(1 2 3 4 5 6 7 8 9 10)"
numbers=(1 2 3 4 5 6 7 8 9 10)

# see first element of an array
echo "# see first element of an array"
echo "echo \${numbers}"
echo ${numbers}

# see element at index
echo "# see element at index"
echo "echo \${numbers[0]}"
echo ${numbers[0]}

echo "echo \${numbers[1]}"
echo ${numbers[1]}

# see the entire array
echo "# see the entire array"
echo "echo \${numbers[@]}"
echo ${numbers[@]}

# slicing
echo "# slicing"
echo "echo \${numbers[@]:2:5}"
echo ${numbers[@]:2:5}

# append new elements to the array
echo "# append new elements to the array"
echo "numbers+=(333 444 999)"
numbers+=(333 444 999)
echo ${numbers[@]}

# see indexes of the array
echo "# see indexes of the array"
echo "echo \${!numbers[@]}"
echo ${!numbers[@]}

# remove element from array at index
echo "# remove element from array at index: unset numbers[5]"
echo "# see indexes of the array"
echo "unset numbers[5] check that index 6 is missing"
unset numbers[5]
echo ${numbers[@]}

echo "# see indexes of the array after remove"
echo ${!numbers[@]}

# change element in array
echo "# change element in array"
numbers[0]=a
echo ${numbers[@]}