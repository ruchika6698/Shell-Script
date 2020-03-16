#!/bin/bash -x

read -p "Enter a Number:" N

if [ $N -eq 1 ]
then
	printf "Sunday"'\n'
elif [ $N -eq 2 ]
then
	printf "Monday"'\n'
elif [ $N -eq 3 ]
then	
	printf "Tuesday"'\n'
elif [ $N -eq 4 ]
then
	printf "Wedenesday"'\n'
elif [ $N -eq 5 ]
then
	printf "Thursday"'\n'
elif [ $N -eq 6 ]
then
	printf "Friday"'\n'
elif [ $N -eq 7 ]
then
	printf "Saturday"'\n'
else
	printf "Invalid Input"'\n'
fi
