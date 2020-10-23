#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE

#Initializing the value
isPresent=1;
empCheck=$((RANDOM%2))

#Checking if employee is present or not.
if [ $empCheck -eq $isPresent ];
then
   echo "Employee is Present"
else
   echo "Employee is Absent"
fi


