#!/bin/sh
#shell script providing menu for server management

#loop for menu options
while true
do
 clear
 echo "\e[33m======================================="
 echo '        Server Management Menu'
 echo "=======================================\e[0m"
 echo '\e[36m'
 echo '1) Mount ssd and start http server'
 echo '2) Start server (ssd already mounted)'
 echo '3) Mount ssd to /mnt/ssd'
 echo '4) Unmount ssd from /mnt/ssd'
 echo '5) Show PID'
 echo '6) Kill http server'
 echo '7) Log management'
 echo '0) Exit menu'
 echo '\e[1;33m'
#get input
 read -p "Please enter option: " main
 echo ''
#handle user input
 case $main in
	"0" ) clear
		break;;
	"1" ) clear
		sh ~/web/scripts/run.sh
		sh ~/web/scripts/waitnohup.sh;;
	"2" ) clear
		sh ~/web/scripts/nmrun.sh
		sh ~/web/scripts/waitnohup.sh;;
	"3" ) clear
		sh ~/web/scripts/mnt.sh
		sh ~/web/scripts/wait.sh;;
	"4" ) clear
		sh ~/web/scripts/umnt.sh
		sh ~/web/scripts/wait.sh;;
	"5" ) clear
		sh ~/web/scripts/pid.sh
		sh ~/web/scripts/wait.sh;;
	"6" ) clear
		sh ~/web/scripts/kill.sh
		sh ~/web/scripts/wait.sh;;
	"7" ) clear
		echo '\e[0m'
		sh ~/web/scripts/logman.sh
		echo '\e[0m';;
	* ) echo "Invalid option chosen."
		echo ""
		sh ~/web/scripts/wait.sh;;
	esac
done
