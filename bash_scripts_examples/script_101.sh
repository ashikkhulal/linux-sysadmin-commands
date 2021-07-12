#!/bin/bash

# Another Conditions Example (check if a file exists)

echo -n "Enter the file you want me to look for: "
read -r a
check_if_file_exists=$(ls | grep -i $a | wc -l)
if ((check_if_file_exists == 0)); then
	echo "$a file doesn't exists."
	read -p "Do you want me to create one(y/n)?: " input
	if [[ $input == 'y' || $input == 'Y' ]]; then
		touch $a
		echo "$a file has been created successfully"
	fi
    exit
else
    echo "$a file exists!"
fi
