#!/bin/bash


for i in ` cat /home/shellscripting/percentage `
do
# echo " the values are $i"
#proc=$1
#name=$2
if [ "$proc" -gt "70" ]; then

  echo " $name 1 rank ";

sleep 5
 
elif [ "proc" -gt "60" ]; then

  echo " $name 2 rank ";

sleep 5

else

  echo " You are Fail";
leep 5
fi 
done

  
