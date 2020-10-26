#!/bin/bash -x
echo "Enter a number"
read prime
for (( i=2;i<=prime-1;i++ ))
do
   num=$(($prime%$i))
   if [ $num -eq 0 ]
   then
       break
   fi
done
if [ $i -eq $prime ]
then
       echo "It is Prime number "
   else
       echo "It is not a Prime Number"
   fi
