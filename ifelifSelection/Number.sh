#!/bin/bash -x 

read -p "Enter a Number:" N

if [ $N -eq 1 ]
then
	printf "Unit"'\n'
elif [ $N -eq 10 ]
then
	printf "Ten"'\n'
elif [ $N -eq 100 ]
then	
	printf "Hundred"'\n'
elif [ $N -eq 1000 ]
then
	printf "Thousand"'\n'
elif [ $N -eq 10000 ]
then
	printf "Ten Thousand"'\n'
else
	printf "Invalid Input"'\n'
fi
