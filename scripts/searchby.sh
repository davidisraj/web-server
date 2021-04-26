#!/bin/sh
# lists log files then asks for user to supply filename
# and IP to search for in the specified or current log

sh ~/web/scripts/listlogs.sh
read -p "Enter name of log file to search or enter 0 for current log: " inp
read -p "Enter IP to search for: " inp2

if [ $inp = 0 ] ; then
	echo ''
	echo 'Showing entries from current log'
	echo '\e[0m'
	grep $inp2 /mnt/ssd/fs/output.log
else
	echo ''
	echo 'Showing entries from log file '$inp
	echo '\e[0m'
	grep $inp2 ~/web/logs/$inp
fi
