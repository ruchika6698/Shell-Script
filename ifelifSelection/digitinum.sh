#!/bin/bash -x 

read -p "Enter a Number:" N

if [ $N -eq 0 ]
then
	printf "Zero"'\n'
elif [ $N -eq 1 ]
then
	printf "One"'\n'
elif [ $N -eq 2 ]
then	
	printf "Two"'\n'
elif [ $N -eq 3 ]
then
	printf "Three"'\n'
elif [ $N -eq 4 ]
then
	printf "Four"'\n'
elif [ $N -eq 5 ]
then
	printf "Five"'\n'
elif [ $N -eq 6 ]
then
	printf "Six"'\n'
elif [ $N -eq 7 ]
then
	printf "Seven"'\n'
elif [ $N -eq 8 ]
then
	printf "Eight"'\n'
elif [ $N -eq 9 ]
then
	printf "Nine"'\n'
else
	printf "Invalid Input"'\n'
fi
