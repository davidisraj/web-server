#!/bin/sh

#cd to fs dir
cd /mnt/ssd/fs

#clear logs
echo "Clearing logs..."
> output.log
> id

#start server, redirect stdout to output.log, send server PID to id
echo "Starting server and sending stdout to output.log..."
nohup python3 -u -m  http.server > output.log & echo $! > id

#exit prompt
echo "Server started and PID sent to id file."

