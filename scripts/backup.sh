#!/bin/sh
#saves log file from server with date

#get date
val=$(date +%F_%H-%M)

#copy output.log from ssd to ~/web/logs
echo 'Copying output.log to ~/web/logs'
cp /mnt/ssd/fs/output.log ~/web/logs/"$val".log
