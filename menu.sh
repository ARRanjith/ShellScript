#!/bin/bash

echo " ####################################################### ";
echo " 1. Display current date and time ";
echo " 2. Display the current location ";
echo " 3. Dislpay the list of files in current directory ";
echo " 4. Display the free memory space ";
echo " 5. Display the disk details ";
echo " 6. Display the list of block ";
echo " ####################################################### ";

read -p " Enter your option: " i ;

case $i in
	1)
		echo " 
		
		
		The current time is : $(date) 
		
		
		";
		read -p " 1.menu 2.exit : " y;
		case $y in 
			1)
				sh /shellscript/menu.sh
				;;
			2)
				exit 0
				;;
		esac
		;;

	2)echo "
	       
	
		The current location is : $(pwd) 
		
		
		";
		read -p " 1.menu 2.exit : " y;
                case $y in
                        1)
                                sh /shellscript/menu.sh
                                ;;
                        2)
                                exit 0
                                ;;
                esac

		;;
	
	3)
		read -p " which directory you want to list : " file;
		echo "
	       
	
*******The list of file in $file  directory is******** 
		
		
		";
		ls $file;
		read -p " 1.menu 2.exit : " y;
                case $y in
                        1)
                                sh /shellscript/menu.sh
                                ;;
                        2)
                                exit 0
                                ;;
                esac

		;;

	4)
		echo " 
		
		
		The free memory space is : $(free -m) 
		
		
		";
		read -p " 1.menu 2.exit : " y;
                case $y in
                        1)
                                sh /shellscript/menu.sh
                                ;;
                        2)
                                exit 0
                                ;;
                esac

		;;
	
	5)
		echo "
	       
	
********The disk details are********* 
		
		
		";
		df -hT
		read -p " 1.menu 2.exit : " y;
                case $y in
                        1)
                                sh /shellscript/menu.sh
                                ;;
                        2)
                                exit 0
                                ;;
                esac

		;;

	6)
		echo "
		
		
*******The list of block details are******** 
		
		
		";
		lsblk
		read -p " 1.menu 2.exit : " y;
                case $y in
                        1)
                                sh /shellscript/menu.sh
                                ;;
                        2)
                                exit 0
                                ;;
                esac

		;;

	*)
		echo " 
		
		
		
		*********This option is not available in the menu********* 
		
		
		";
		exit 0;
		
esac
