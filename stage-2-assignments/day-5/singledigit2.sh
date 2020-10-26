read -p "Enter a single digit number " digitnum
echo "Single digit number is... "

if [ $digitnum -eq 1 ]
then
   echo "one"
elif [ $digitnum -eq 2 ]
then
   echo "two"
elif [ $digitnum -eq 3 ]
then
   echo "three"
elif [ $digitnum -eq 4 ]
then
   echo "four"
elif [ $digitnum -eq 5 ]
then
   echo "five"
elif [ $digitnum -eq 6 ]
then
   echo "six"
elif [ $digitnum -eq 7 ]
then
   echo "seven"
elif [ $digitnum -eq 8 ]
then
   echo "eight"
elif [ $digitnum -eq 9 ]
then
   echo "nine"
elif [ $digitnum -eq 0 ]
then
   echo "zero"
else
   echo "Oops not a single digit number.Try again"
fi
