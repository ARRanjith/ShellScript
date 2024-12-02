#!/bin/bash

RESPOND=$( curl -s -w "%{http_code}" "http://localhost:8080/" -o /dev/null )

if [ $RESPOND -eq 200 ]; then

   echo " Tomcat is running ";

else

   echo " Tomcat is not running please check service ";

fi
