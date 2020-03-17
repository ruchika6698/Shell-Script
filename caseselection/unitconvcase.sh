#!/bin/bash -x


read -p "Enter a choice: " choice

case  $choice in 
	1)
		read -p "Enter a Number: " Number
		Feet=$(echo "scale=2; $Number*12" | bc)
		printf " $Number=$Feet inch"'\n'
	;;
	2)
		read -p "Enter a Number: " Number
		Feet=$(echo "scale=2; $Number*0.3048" | bc)
		printf " $Number=$Feet meter"'\n'
	;;
	3)
		read -p "Enter a Number: " Number
		Inch=$(echo "scale=2; $Number/12" | bc)
		printf " $Number=$Inch ft"'\n'
	;;
	4)
		read -p "Enter a Number: " Number
		Meter=$(echo "scale=2; $Number/0.3048" | bc)
		printf " $Number=$Meter ft"'\n'
	;;				
	*)
		echo "Wrong choice"
	;;
esac
