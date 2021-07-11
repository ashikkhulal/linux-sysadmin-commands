#!/bin/bash

# Simple Loop Example

clear
read -p "Please enter a number between 1 to 10: " number
i=0
while [ $i -le $number ]; do
    echo "$i"
    let i+=1
done
