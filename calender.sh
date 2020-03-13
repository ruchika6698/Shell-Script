#!/bin/bash -x

args=("$@")
echo $@

d=${args[0]}
m=${args[1]}
y=${args[2]}

y1=$(( $y - ( 14 - $m )/12 ))
x=$(( $y1 + $y1 / 4 - $y1 / 100 + $y1 / 400))
m1=$(( $m + 12 * (( 14 - $m ) / 12 ) - 2))
d1=$(( ( $d + $x + 31 * $m1 / 12 ) % 7 ))

if [[ $m -gt 12 ]]  || [[ $d -gt 31 ]]
then 
	echo " Day or Month is invalid "
else
	case  $d1 in 
   		0)
				echo "Day on date $@ is sunday"
			;;

			1)
				echo "Day on date $@ is monday"
			;;


			 2)
				echo "Day on date $@ is Tuesday"
			;;

 	 		3)
				echo "Day on date $@ is wedenesday"
			;;
    		4)
				echo "Day on date $@ is Thursday"
			;;

    		5)
				echo "Day on date $@ is Friday"
			;;

    		6)
				echo "Day on date $@ is saturday"
			;;
	esac
fi
