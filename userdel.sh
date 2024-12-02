#!/bin/bash

username=$(cat /home/shellscripting/users.txt | cut -d ":" -f 1)
for i in $username
do
userdel $i
echo " user $i has been deleted"
rm -rf /home/$i
echo " user $i home directory has been removed"
done
