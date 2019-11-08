#!/bin/bash
#Take the for available partition name from df command.
#

input=$(df -Ph | tr -s " " | cut -d " " -f6 | awk '{if(NR>1)print}' | grep -v -e "dev" -e "run" -e "sys")

for i in $input;do
        touch $i/forcefsck;
        echo created the file forcefsck in $i partition.
done
