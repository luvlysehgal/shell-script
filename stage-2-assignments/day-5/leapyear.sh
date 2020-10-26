#!/bin/bash -x
read -p "Enter the year" year
x=$(($year % 4))
y=$(($year % 100))
z=$(($year % 400))
if [[ $x == 0 || $y == 0 || $z == 0 ]];
then
   echo "Year you entered is a Leap year"
else
   echo "Not a leap year"
fi
