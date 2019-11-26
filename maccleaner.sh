#!/bin/bash
# Simple script to create random mac address, at random sec intervals to 
# prevent MAC change pattern/location analysis/identification/tracking;
# requires macchanger; jme0719a@harford.edu 

mac=wlan0       # wifi card goes here
hightime=1000   # highest number of seconds between next random MAC change time?
lowtime=1       # lowest number of seconds between next random MAC change time?
while :
do
        echo 'ghostmac generating random times, random addresses:'
        rando=$((RANDOM%$hightime+$lowtime))
        ifconfig $mac down;macchanger -r $mac;ifconfig $mac up
        echo 'MAC changing in:' $rando'sec'
        sleep $rando
done
