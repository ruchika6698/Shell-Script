#!/bin/bash -x

printf "Convert Celcius to Fahrenheit:"'\n'
printf "Convert Fahrenheit to Celcius:"'\n'
read N

function degF(){
	read -p "Enter Temperature in Celcius:" degC
	if [[ $degC -ge 0 && $degC -le 100 ]]
	then
		degF=$( echo " scale=2; ($degC*9/5) + 32 " | bc )
		printf "$degF C"
	else
		printf "Temperature degree is not valid \n"
	fi
}

function degC(){
	read -p "Enter Temperature in Fahrenheit:" degF
	if [[ $degF -ge 32 && $degF -le 212 ]]
	then
		degC=$( echo " scale=2; ($degF-32) * 5/9 " | bc )
		printf "$degC F"
	else
		printf "Temperature degree is not valid \n"
	fi
}

case $N in
	1)
		result=$(degF $degF)
		printf "$result"'\n' 
	;;
	2)
		result=$(degC $degC)
		printf "$result"'\n'
	;;
	*)
		echo "Wrong Choice"
	;;
esac
