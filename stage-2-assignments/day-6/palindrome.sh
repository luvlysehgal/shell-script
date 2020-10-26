#!/bin/bash -x
revnum=0

prime() {
  num1=$1
  for (( i=2;i<=num1-1;i++ ))
  do
    result1=$(($num1%$i))
    if [ $result1 -eq 0 ]
    then
        break
    fi
  done
  if [ $i -eq $num1 ]
  then
       echo "It is Prime number "
  else
       echo "It is not a Prime Number"
  fi
}

palindrome() {
   num2=$1
   while [ $num2 -gt 0 ]
   do
      singledig=$(($num2%10))
      revnum=$(($revnum*10+$singledig))
      num2=$(($num2/10))
   done
   return $revnum
}
echo "Enter a number"
read number1
prime $number1

echo "Lets check this prime number is also a Palindrome or not..."
palindrome $number1
originalnum=$number1
revnum=$?

if [ $revnum -eq $orignum ]
then
   echo "This is  Palindrome number"
else
   echo "This is not a Palindrome number"
fi


echo "Lets check this palindrome number is prime or not.... "
if [ $revnum -eq $number1 ]
then
    echo "It is a Prime Palindrome number "
else
    echo "It is not a Prime Palindrome number"
fi

