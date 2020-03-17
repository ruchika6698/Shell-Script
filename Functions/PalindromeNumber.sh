#!/bin/bash -x

read -p "Enter a Number1:" Number1
read -p "Enter a Number2:" Number2

function palindrome()
{
  reverse_Number=0
  temp=$1
	while [ $temp != 0 ]
	do
   	remainder=$(( $temp%10 ))
   	reverse_Number=$(( $reverse_Number*10 + $remainder ))
    	temp=$(( $temp/10 ))
	done

	if [ $1 -eq $reverse_Number ]
	then
		return 1
	else
		return 0
	fi
}

result1=$( palindrome $Number1 )
result1=$?
result2=$( palindrome $Number2 )
result2=$?

if [[ $result1 -eq 1 && $result2 -eq 1 ]]
then
    printf "Number is palindrome number"'\n'
else
    printf "Number is not a palindrome number"'\n'
fi

