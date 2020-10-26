echo "Enter a number from 1, 10, 100, 1000..."
read num1

if [ $num1 -eq 1 ]
then
   echo "Unit"
elif [ $num1 -eq 10 ]
then
   echo "ten"
elif [ $num1 -eq 100 ]
then
   echo "hundred"
elif [ $num1 -eq 1000 ]
then
   echo "thousand"
else
    echo "Number is not valid.."
fi
