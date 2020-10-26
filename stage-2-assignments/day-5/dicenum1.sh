#!/bin/bash
echo "Throwing two dice... "
dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
add=$(($dice1+$dice2))
echo "we got numbers in dice-1 and dice-2 " $dice1 "and " $dice2 "respectively"
echo "Adding both the numbers.. and the result is " $add
