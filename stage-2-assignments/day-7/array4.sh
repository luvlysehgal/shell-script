#!/bin/bash -x
array4=("10" "-7" "-3")
for (( i=0;i<3;i++ ))
do
   sum=$(($sum+${array4[i]}))
   array4[i]=$sum
done
echo "Sum of these array is: " $sum
