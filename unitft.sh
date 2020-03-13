#!/bin/bash -x 

FEET=12;
inch=$(echo "scale=2; 42/$FEET" | bc)
printf "42 inch=$inch ft"'\n'

Feet=0.3048
RectangularArea=$(echo "scale=2; 60*40*$Feet" | bc)
printf "Rectangular Area:$RectangularArea m"'\n'

Area25plot=$(echo "scale=2; $RectangularArea*25 " | bc)
printf "Area of plot in feet:$Area25plot ft"'\n'
AreainAcres=$(echo "scale=2; $Area25plot*0.000247105" | bc)
printf "Area of 25 plot in Acres=$AreainAcres acres"'\n'
