#!/bin/bash
clear
while :
do
        echo
        echo "Please enter a number from [0..3]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 1 ] \e[93mDecryption data\e[0m"
        echo -e " [ 2 ] \e[93mDecoding data\e[0m"
        echo -e " [ 3 ] \e[93mDehashing data\e[0m"
        echo -e " [ 4 ] \e[47mDECODIFY\e[0m"
        echo -e " [ 5 ] \e[48mFINDMYHASH\e[0m"

        echo -e "\e[32m======================================\e[0m"
        echo " [ 0 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 1)
                        ./decryption.sh
                        ;;
                 2)
                        ./decoding.sh 
                        ;;
                 3)
                        ./dehashing.sh
                        ;;
		 4)
			read q
			dcode $q
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



