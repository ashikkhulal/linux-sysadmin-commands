#!/bin/bash

# Another Conditions Example (Which number is greater)

clear
read -p "Enter your first number: " a
read -p "Enter your second number: " b
echo "Bigger number is $((a>b? $a : $b))"