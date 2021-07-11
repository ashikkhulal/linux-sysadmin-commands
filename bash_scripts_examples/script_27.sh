#!/bin/bash

# Archive and Compress

read -p "Enter the name of the file: " name
read -p "Enter the path of the file or folder: " path
read -p "Do you want me to compress it as well(y/n)?: " input
if [[ $input == 'y' || $input == 'Y' ]]; then
    tar -czvf "$name.tar.gz" "$path"
    echo "$name.tar.gz compressed file has been created successfully!"
else
    tar -cvf "$name.tar" "$path"
    echo "$name.tar.gz archived file has been created successfully!"
fi
exit
