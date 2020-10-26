#!/bin/bash -x
freezing() {
   result=$1
   case $result in
   1) echo "Enter temperature (c): "
      read tempc
      tempf=$(echo "scale=2;($tempc*9/5)+32" | bc )
      echo "$tempc C = $tempf";;
   2) echo "Enter temperature (f): "
      read tempf
      tempc=$(echo "scale=2;(tempf-32)*5/9 " | bc )
      echo "$tempf = $tempc";;
   *) echo "Invalid input";;
   esac
}
echo "1. Convert degC into degF "
echo "2. Convert degF into degC "
echo "Select your choice (1-2)"
read choice
freezing $choice
