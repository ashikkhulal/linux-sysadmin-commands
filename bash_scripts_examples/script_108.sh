#!/bin/bash

# Simple Calculator

clear
sum=0
i="y"
echo -e "Welcome to my calculator!\n"
echo -n "Enter your first number: "
read n1
echo -n "Enter your second number: "
read n2
while [ $i = "y" ]; do
    echo "---------Choices---------"
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo -n "Enter your choice: "
	read ch
	case $ch in
	1)
		sum=$(expr $n1 + $n2)
		echo "Sum ="$sum
		;;
	2)
		sum=$(expr $n1 - $n2)
		echo "Sub = "$sum
		;;
	3)
		sum=$(expr $n1 \* $n2)
		echo "Mul = "$sum
		;;
	4)
		sum=$(expr $n1 / $n2)
		echo "Div = "$sum
		;;
	*) echo "Invalid choice" ;;
	esac
	echo "Do u want to continue (y/n)) ?"
	read i
	if [ $i != "y" ]; then
		exit
	fi
done