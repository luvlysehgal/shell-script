#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE

#Initializing the variable
isFullTime=1;
isPartTime=2;
empWagePerHr=20
numWorkingDays=20

#Calculating Wages for a month
for (( days=1;days<=$numWorkingDays;days++))
do
   empCheck=$((RANDOM%3))
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
empSalary=$(($empWagePerHr*$empHr)) #Calculating Employee Wage
totalSalary=$(($totalSalary+$empSalary))
done


