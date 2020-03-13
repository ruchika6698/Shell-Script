#!/bin/bash -x

read -p "Enter year:" y

if [[ $y -gt 1000 && $y -lt 9999 ]]
then 
	if [[ $y%4 -eq 0 || $y%400 -eq 0 && $y%100 -ne 0 ]]
	then
		echo " Year is Leap year"		
	else
		echo "not leap year"
	fi
fi
