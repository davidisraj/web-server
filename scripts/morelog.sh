#!/bin/sh

file=$1
echo '\e[0m'

#check if file has been passed to script
if [ $# -eq 0 ] ; then
	#display contents of server log
	more /mnt/ssd/fs/output.log
else
	#display specific log file
	more ~/web/logs/$file
fi
