#!/bin/bash -x
echo "Lets play a game... Please think N number from 1 to 100"
max=100
min=1
while [ $min -le $max ]
do
   mid=$(((max+min)/2))
   echo "Press 1 if your number is less than " $mid "otherwise press 2"
   read check
   if [ $check -eq 1 ]
   then
       max=$(($mid-1))
   elif [ $check -eq 2 ]
   then
        min=$((mid+1))
   else
        echo "Invalid input"
   fi
done
echo "Result is " $max
