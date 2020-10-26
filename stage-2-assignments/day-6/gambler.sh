#!/bin/bash -x
startrupee=100
win=0
loose=0
while [ $startrupee -lt 200 -a $startrupee -gt 0 ]
do
   number=$((RANDOM%2))
   if [ $number -eq 0 ]
   then
       win=$(($win+1))
       startrupee=$(($startrupee+1))
   else
       loose=$(($loose+1))
       startrupee=$(($startruppee-1))
   fi
done
echo "Number of times gambler wins " $win
echo "Number of times gambler loss " $loose

