#!/bin/bash -x

Start=1
End=100
flag=0
choice=0

while [[ $flag -eq 0 && $choice -eq 0 ]]
do
	read -p "Enter your choice:" choice1
	choice=$choice1
	
	min=$(( $(( Start+End ))/2 ))

	printf "Enter a choice:$N \n"
	printf "1.My Number is:$min \n"
	printf "2.The Number should be less than min: \n" 
	printf "3.The Number should be Greater than min: \n" 
	read N

	case  $N in 
		1)
			printf "Your thinking Number is $min"'\n'
			break
		;;
		2)
			End=$min
		;;
		3)
			Start=$min
		;;
		*)
			echo "Wrong Choice"
		;;
	esac
done
