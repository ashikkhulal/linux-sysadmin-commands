#!/bin/bash

# Second Loop Example (Pyramid)

clear
read -p "Please enter a number between 1 and 20: " number
i=0
while [ $i -le $number ]; do
    j=0
    while [ $j -le $i ]; do
        echo -n "*"
        let j+=1
    done
    echo ""
    let i+=1
done

while [ $number -ge 0 ]; do
    i=$number
    while [ $i -ge 0 ]; do
        echo -n "*"
        let i-=1
    done
    echo ""
    let number-=1
done