#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE

#Initializing the value
isPresent=1;
empCheck=$((RANDOM%2))

#Checking if employee is present or not.
if [ $empCheck -eq $isPresent ];
then
    empWagePerHr=20
    empFullDayHr=8
    empSalary=$(($empWagePerHr*$empFullDayHr))
else
    empSalary=0
fi


