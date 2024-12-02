#!/bin/bash

file=$1

if [ -f "/home/shellscripting/$file" ]; then

  echo " The file are exist in /home/shellscrpting directory"
else
  echo " The file are not in this folder"
fi

if [ -w "/home/shellscripting/$file" ]; then

  echo " 

          you have write access 

"
else
  echo " 

           you dont have write permission 

"
fi
