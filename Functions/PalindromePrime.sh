#!/bin/bash -x

read -p "Enter a Number:" Number

function palindrome()
{
  reverse_Number=0
  temp=$1
	while [[ $temp -ne 0 ]]
	do
   	remainder=$(( $temp%10 ))
   	reverse_Number=$(( $reverse_Number*10 + $remainder ))
    	temp=$(( $temp/10 ))
	done

	if [[ $1 -eq $reverse_Number ]]
	then
		return 1
	else
		return 0
	fi
}

function prime()
{
	count=0;
	for(( index=2; index<$Number; index++ ))
	do 
		if [[ $Number%$index -eq 0 ]]
		then
			((count++))
		fi
	done
	if [[ $count -eq 0 ]]
	then
		return 1
	else
		return 0
	fi

}


result1=$( palindrome $Number )
result1=$?

result2=$( prime $Number )
result2=$?

if [[ $result1 -eq 1 ]]
then
    printf "Number is palindrome number"'\n'
else
    printf "Number is not a palindrome number"'\n'
fi

if [[ $result2 -eq 1 ]]
then
	printf "Number is Prime Number"'\n'
else
	printf "Number is not prime Number"'\n'
fi

if [[ $result1 -eq $result2 ]]
then
	printf "Prime Number is a Palindrome Number \n"
else
	printf " Prime Number is not a Palindrome Number \n"
fi
