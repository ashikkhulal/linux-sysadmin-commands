#!/bin/bash

# Simple Multiplication Calculator

echo -n "Enter the first number: "
read -r a
echo -n "Enter the second number: "
read -r b
echo "Multiplication of $a and $b is $((a*b))"