#!/bin/bash -x
echo "Enter two numbers"
read num1
read num2
for (( i=$num1;i<=$num2+1;i++ ))
do
   for (( j=2;j<=i;j++ ))
   do
      num=$(($i%$j))
      if [ $num -eq 0 ]
      then
          break
      fi
   done
   if [ $i -eq $j ]
   then
       echo $i " "
   fi
done
echo "....The range of Prime numbers"
