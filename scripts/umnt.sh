#!/bin/sh

#unmount external ssd from /mnt/ssd
echo "Dismounting /dev/sda1 from /mnt/ssd..."
sudo umount /dev/sda1
sleep 1s
echo "Complete."
