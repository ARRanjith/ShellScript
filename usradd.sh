#!/bin/bash

username=$(cat /home/shellscripting/userlist)
password=$username@123
for i in $username
do
useradd -s /sbin/nologin $i
echo " $(wc -l /home/shellscripting/userlist)users are created"
echo $password | passwd --stdin $i
done
