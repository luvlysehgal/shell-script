#!/bin/bash -x
echo "Enter a number"
result=1
read number
for (( i=1;i<=number;i++ ))
do
   result=$(($result*$i))
done
echo "The factorial of " $number "is " $result
