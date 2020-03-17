#!/bin/bash

read -p "Enter a Number: " N

case  $N in 
	1)
		echo "Day is sunday"
	;;
	2)
		echo "Day is monday"
	;;
	3)
		echo "Day is Tuesday"
	;;
	4)
		echo "Day is wedenesday"
	;;
   5)
		echo "Day is Thursday"
	;;
	6)
		echo "Day is Friday"
	;;
	7)
		echo "Day is saturday"
	;;
	*)
		echo "Day Doesn't Exist"
	;;
esac
