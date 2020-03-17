#!/bin/bash -x

HEAD=0
TAIL=0

while (($HEAD < 11 && $TAIL < 11))
do
	n=$((RANDOM%2))
   if (($n == 0))
   then
		echo "HEAD" 
      ((HEAD++))
   else
		echo "TAIL"	
      ((TAIL++))
   fi
done  

if(($HEAD==11))
then
	printf " Winner:  HEAD  Win"'\n'
else
	printf " Winner:  TAIL  Win"'\n'
fi
