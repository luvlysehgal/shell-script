#!/bin/bash -x
echo "Enter a N number"
read N
for (( i=2;N>1;i++ ))
do
   while [ $(($N%$i)) -eq 0 ]
   do
      array2[i]=$i
      echo ${array2[i]}
      N=$(($N/$i))
   done
done
echo "....These are the Prime factors."
echo ${array2[@]}
