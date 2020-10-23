#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE

#Initializing the variable
isFullTime=1;
isPartTime=2;
empCheck=$((RANDOM%3))
empWagePerHr=20

#Checking if employee is present or not.

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
 


