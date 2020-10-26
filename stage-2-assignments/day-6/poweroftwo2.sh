#!/bin/bash -x
echo "Enter a number"
i=1
read n
while [ $i -le $n ]
do
   result=$((2**$i));
   if [ $n -gt 8 ]
   then
       echo "your number should be smaller than 8"
       break
   else
       echo $i $result
fi
   i=$(($i+1))
done
