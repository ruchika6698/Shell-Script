#!/bin/bash -x

declare -A dictionary
Number=0
count=0
num=0

dic1count=0
dict2count=0
dict3count=0
dict4count=0
dict5count=0
dict6count=0

dictionary=( ["die1"]=0 ["die2"]=0 ["die3"]=0 ["die4"]=0 ["die5"]=0 ["die6"]=0 )

while [[ $count != 60 ]]
do
		Number=$((1+RANDOM%6))

		if [[ $Number -eq 1 ]]
		then
			((dict1++))
			dictionary[die1]=$dict1
			a=$dict1
			((count++))

		elif [[ $Number -eq 2 ]]
   	then
      	((dict2++))
      	dictionary[die2]=$dict2
			b=$dict2
			((count++))

		elif [[ $Number -eq 3 ]]
		then
      	((dict3++))
      	dictionary[die3]=$dict3
			c=$dict3
			((count++))

		elif [[ $Number -eq 4 ]]
  		then
   	   ((dict4++))
      	dictionary[die4]=$dict4
			d=$dict4
			((count++))

   	elif [[ $Number -eq 5 ]]
		then
      	((dict5++))
      	dictionary[die5]=$dict5
			e=$dict5
			((count++))

   	elif [[ $Number -eq 6 ]]
  		then
     		((dict6++))
      	dictionary[die6]=$dict6
			f=$dict6
			((count++))
		fi
done

echo ${!dictionary[@]} ' : ' ${dictionary[@]}

if [ $a -eq 10 ] 
then
	 echo "1 is repeated 10 times"

elif [ $b -eq 10 ]
then
	echo  "2 is repeated 10 times"

elif [ $c -eq 10 ]
then
	echo "3 is repeated 10 times"
elif [ $d -eq 10 ]
then
   echo "4 is repeated 10 times"
elif [ $e -eq 10 ]
then
   echo  "5 is repeated 10 times"
elif [ $f -eq 10 ]
then
   echo  "6 is repeated 10 times"
else
	echo "die is not repeated 10 times"
fi



if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ] && [ $a -gt $f ]
then
	echo "1 is repeated Maximum times"
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ] && [ $b -gt $f ]
then
	echo "2 is repeated Maximum times"
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ] && [ $c -gt $e ] && [ $c -gt $f ]
then
   echo "3 is repeated Maximum times"
elif [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ] && [ $d -gt $e ] && [ $e -gt $f ]
then
   echo "4 is repeated Maximum times"
elif [ $e -gt $a ] && [ $e -gt $b ] && [ $e -gt $c ] && [ $e -gt $d ] && [ $e -gt $f ]
then
   echo "5 is repeated Maximum times"
elif [ $f -gt $a ] && [ $f -gt $b ] && [ $f -gt $c ] && [ $f -gt $d ] && [ $f -gt $e ]
then
   echo "6 is repeated Maximum times"
fi



if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ] && [ $a -lt $f ]
then
   echo "1 is repeated Minimum times"
elif [ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ] && [ $b -lt $f ]
then
   echo "2 is repeated Minimum times"
elif [ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ] && [ $c -lt $f ]
then
   echo "3 is repeated Minimum times"
elif [ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ] && [ $e -lt $f ]
then
   echo "4 is repeated Minimum times"
elif [ $e -lt $a ] && [ $e -lt $b ] && [ $e -lt $c ] && [ $e -lt $d ] && [ $e -lt $f ]
then
   echo "5 is repeated Minimum times"
elif [ $f -lt $a ] && [ $f -lt $b ] && [ $f -lt $c ] && [ $f -lt $d ] && [ $f -lt $e ]
then
   echo "6 is repeated Minimum times"
fi
