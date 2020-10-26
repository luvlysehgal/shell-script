#!/bin/bash -x
echo "Flipp a coin...."
headside=0
tailside=0
while [ $tailside -lt 11 -o $headside -lt 11 ]
do
  random=$((RANDOM%2))
  if [ $random -eq 0 ]
  then
     headside=$(($headside+1))
  else
     tailside=$(($tailside+1))
  fi
done
if [ $headside -gt $tailside ]
then
    echo "Head wins the game"
else
    echo "Tail wins the game"
fi
