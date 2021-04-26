#!/bin/sh

# mount external ssd
echo "Mounting ssd..."
sudo mount /dev/sda1 /mnt/ssd
sleep 1s

#cd to fs dir
cd /mnt/ssd/fs

#clear logs
echo "Clearing logs..."
> output.log
> id

#start server, redirect stdout to output.log, send server PID to id
echo "Starting server and sending stdout to output.log..."
nohup python3 -u -m  http.server > output.log & echo $! > id

sleep 1s
#exit prompt
echo "Server started and PID sent to id file."

