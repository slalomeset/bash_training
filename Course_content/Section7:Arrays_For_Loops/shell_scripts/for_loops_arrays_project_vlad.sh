#!/bin/bash

# for_loops_arrays_project_vlad.sh

readarray -t sites <urls.txt

for site in "${sites[@]}"; do
    # get file name
    file_name=$(echo "${site}".txt | cut -d '.' -f 2,4)

    # create the file
    touch "${file_name}"
    
    # access site and store content inside the file
    echo "$(curl --head ${site})" &> ${file_name}
done
