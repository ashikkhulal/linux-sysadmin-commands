#!/bin/bash

# Simple Subraction Calculator

echo -n "Enter the first number: "
read -r a
echo -n "Enter the second number: "
read -r b
echo "Subraction of $b from $a is $((a-b))"