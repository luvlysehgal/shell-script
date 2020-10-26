#!/bin/bash
value1=$((RANDOM%100+10))
value2=$((RANDOM%100+10))
value3=$((RANDOM%100+10))
value4=$((RANDOM%100+10))
value5=$((RANDOM%100+10))

echo "The five random values are " $value1 $value2 $value3 $value4 $value5

add=$(($value1+$value2+$value3+$value4+$value5))

echo "Adding the values... and the result is  " $add
average=$(($add/5))
echo "The average of these value are.. " $average
