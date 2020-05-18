#!/bin/bash
clear
while :
do
        echo
        echo "Please enter a number from [0..3]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 1 ] \e[93mData encryption\e[0m"
        echo -e " [ 2 ] \e[93mData encoding\e[0m"
        echo -e " [ 3 ] \e[93mData hashing\e[0m"
	echo -e "\e[32m======================================\e[0m"
        echo " [ 0 ]: Back"
        echo 
        echo -n "Enter your choice:"
        read x
        case $x in
		 1)
			./encryption.sh 
			;;
		 2)
			./encoding.sh 
			;;
		 3)
			./hashing.sh
			;;
		 0)
		 	 exit 1
		 	 break
		 	 ;;
	         *)
                        echo "Sorry, wrong command"
                        ;;
        esac
done


