#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE

#These are the Constant Values
isFullTime=1;
isPartTime=2;
empWagePerHr=20
numWorkingDays=20
maxWorkingHrs=100

#Initializing the variable
totalEmpHrs=0
totalWorkingDays=0

#Function to get work hours
getWorkHours() {

    localempCheck=$1
     case $empCheck in

    $isFullTime)
              empHr=16
               ;;
    $isPartTime)
               empHr=8
                ;;
    *)
       empHr=0
   esac
   echo $empHr
}

#Function to get Daily Wage of Employee
getWage() {

   localEmpHr=$1
   echo $(($localEmpHr*$empWagePerHr))
}

#Calculating Wages for a month
while [[ $totalEmpHrs -lt $maxWorkingHrs && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   empHr="$( getWorkHours $empCheck )"
   totalEmpHrs=$(($totalEmpHrs+$empHr))
   dailyWage["$totalWorkingDays"]="$( getWage $empHr )"
done
totalSalary=$(($totalEmpHrs*$empWagePerHr))
echo ${dailyWage[@]}
