#!/bin/bash -x
for (( i=1;i<100;i++ ))
do
   if [ $(($i%11)) -eq 0 ]
   then
      array5[i]=$i
   fi
done
echo ${array5[@]}


 
