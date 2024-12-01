#!bin/bash
clear

if [ $(id -u) == 0 ]; then
echo "#######################";
echo "The status of firewall";
echo "#######################";

	firewall=$(systemctl status firewalld | grep Active | cut -d ':' -f 2 | cut -d ' ' -f 2)
	echo " 
	
	The Firewall status is :" $firewall

echo "#######################";
echo " The HTTPD status";
echo "#######################";

	tomcat=$(systemctl status httpd | grep Active | cut -d ':' -f 2 | cut -d ' ' -f 2);
	echo " 
	
	The HTTPD status is :" $tomcat
else
	echo " you dont have permision to see the status of firewall ";
fi
