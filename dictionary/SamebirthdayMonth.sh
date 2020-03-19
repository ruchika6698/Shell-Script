#!/bin/bash -x

declare -A dictionary
BirthMonth=0

function SamebirthMonth()
{
	BirthMonth=$((1+RANDOM % 24))
}

month1count=0
month2count=0
month3count=0
month4count=0
month5count=0
month6count=0
month7count=0
month8count=0
month9count=0
month10count=0
month11count=0
month12count=0

dictionary=( ["January"]=0 ["February"]=0 ["March"]=0 ["April"]=0 ["May"]=0 ["June"]=0 ["July"]=0 ["August"]=0 ["September"]=0 ["October"]=0 ["November"]=0 ["December"]=0 )

while [[ $sum -lt 50 ]]
do

	sum=$(($month1count+$month2count+$month3count+$month4count+$month5count+$month6count+$month7count+$month8count+$month9count+$month10count+$month11count+$month12count))

	for (( index=1; index<=2; index++))
	do
	SamebirthMonth
		BirthMonth=$(($BirthMonth/$index))

		if [[ BirthMonth -eq 1 ]]
		then
			((month1count++))
			dictionary[January]=$month1count

		elif [[ BirthMonth -eq 2 ]]
      then
         ((month2count++))
         dictionary[February]=$month2count

      elif [[ BirthMonth -eq 3 ]]
      then
          ((month3count++))
          dictionary[March]=$month3count

      elif [[ BirthMonth -eq 4 ]]
      then
          ((month4count++))
          dictionary[April]=$month4count

      elif [[ BirthMonth -eq 5 ]]
    	then
         ((month5count++))
         dictionary[May]=$month5count

      elif [[ BirthMonth -eq 6 ]]
      then
          ((month6count++))
          dictionary[June]=$month6count

      elif [[ BirthMonth -eq 7 ]]
      then
         ((month7count++))
         dictionary[July]=$month7count

      elif [[ BirthMonth -eq 8 ]]
      then
         ((month8count++))
         dictionary[August]=$month8count

     	elif [[ BirthMonth -eq 9 ]]
      then
         ((month9count++))
         dictionary[September]=$month9count

      elif [[ BirthMonth -eq 10 ]]
      then
         ((month10count++))
         dictionary[October]=$month10count

      elif [[ BirthMonth -eq 11 ]]
      then
         ((month11count++))
         dictionary[November]=$month11count

      elif [[ BirthMonth -eq 12 ]]
      then
         ((month12count++))
         dictionary[December]=$month12count

		fi
		done
done

echo "Number of individuals having birthday in same month in years 92 & 93: "
echo ${!dictionary[@]} ' : ' ${dictionary[@]}
