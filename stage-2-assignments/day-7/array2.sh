#!/bin/bash -x
counter=0

indexArray1() {
    while [ $counter -lt 10 ]
    do
       counter=$(($counter+1))
       result=$((RANDOM%900+100))
       array1[$counter]=$result
    done
}

indexArray1
for (( i=0;i<10;i++ ))
do
      for (( j=0;j<10-$i;j++ ))
       do
          if [ ${array1[j]} -gt ${array1[$((j+1))]} ]
          then
            sorting=${array1[j]}
            array1[$j]=${array1[$((j+1))]}
            array1[$((j+1))]=$sorting
          fi
       done
done
echo ${array1[@]}
smallest=${array1[1]}
largest=${array1[1]};
secLargest=0
secSmallest=0

for (( i=1;i<=${#array1[@]};i++ ))
do
    if [ ${array1[i]} -gt $largest ]
    then
        secLargest=$largest
        largest=${array1[i]}
    elif [ ${array1[i]} -gt $secLargest ]
    then
         secLargest=${array1[i]}
         echo ${array1[i]}
    fi
done
echo "Second largest number in array is  " $secLargest

for (( i=1;i<=${#array1[@]};i++ ))
do
   if [ ${array1[i]} -le $smallest ]
    then
  secSmallest=$smallest
       smallest=${array1[i]}
    elif [[ ${array1[i]} -lt $secSmallest && ${array1[i]} -ne $smallest ]]
    then
        secSmallest=${array1[i]}
        echo ${array1[i]}
    fi
done
echo "Second smallest number in the array is " $secSmallest
