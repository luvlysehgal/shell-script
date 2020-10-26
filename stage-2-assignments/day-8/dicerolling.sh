#!/use/local/bin/bash -x
echo "Rolling a dice....."
declare -A rollingDice
for (( i=0;i<=6;i++ ))
do
   dice+=([$i]=0)
done

max=1
value=0
while [ $max -gt 0 ]
do
   ((value++))
   rolled=$((RANDOM%6+1))
   echo "$value  Dice is rolled : $rolled"
   ((dice[$rolled]++))
   if [ ${dice[$rolled]} -eq 10 ]
   then
       break
   fi
done
for (( i=1;i<=6;i++ ))
do
   echo $i ${dice[$i]}
done
echo "The dice rolled maximum times:  $rolled "
min=${dice[1]}
rolled=1
for (( i=2;i<=6;i++ ))
do
   if [ ${dice[$i]} -lt $min ]
   then
       min=${dice[$i]}
       rolled=$i
   fi
done
echo "The dice rolled minimum times:  $rolled"
