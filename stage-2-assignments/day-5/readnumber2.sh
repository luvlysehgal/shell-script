echo "Enter a number from 1, 10, 100, 1000"
read number1
case $number1 in
   1) echo "unit";;
   10) echo "ten";;
   100) echo "hundred";;
   1000) echo "thousand";;
   *) echo "Invalid number";;
esac
