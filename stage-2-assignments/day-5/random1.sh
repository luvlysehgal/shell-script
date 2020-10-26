#!bin/bash -x
min=100
max=1000

for (( i=0;i<5;i++ ))
do
   randomvar=$((RANDOM%1000+100))
   if [ $randomvar -gt max ]
   then
      max=$randomvar1
   fi
   if [ $randomvar -lt min ]
   then
      min=$randomvar2
   fi
done
echo "Min value is.. " $min
echo "Max value is.. " $max
