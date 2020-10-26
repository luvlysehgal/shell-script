#!/bin/bash -x
echo "Enter a nth harmonic number"
read number
for (( i=1;i<=number;i++ ))
do
   harmonic=`awk 'BEGIN{print 1/'$i'}'`
   sum+=$harmonic
done
echo "The Horminic nth number is -> " $harmonic
