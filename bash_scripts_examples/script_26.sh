#!/bin/bash

# Printing Even & Odd Numbers

read -p "Please enter a randon number: " number
echo -e "-------Printing Even Numbers-------"
for (( i=1; i<=$number; i=i+1 )); do
    if [[ $i%2 -eq 0 ]]; then
        echo -n "$i "
    fi
done

echo -e "\n-------Printing Odd Numbers-------"
for (( i=1; i<=$number; i=i+1 )); do
    if [[ $i%2 -ne 0 ]]; then
        echo -n "$i "
    fi
done