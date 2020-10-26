read -p "Enter the month number: " month
read -p "Enter the day: " day

if (( ($month >= 3 & $month <= 6) & ($day <= 20) ))
then
   echo "true"
else
   echo "false"
fi
