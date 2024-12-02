#!/bin/bash

echo "Enter username:"
read username

echo "Enter password:"
read -s password

useradd -m -p $(openssl passwd -1 $password) $username

echo "$username:$password" >> users.txt

echo "Added users:"
cat users.txt

