#!/bin/bash
# Simple script to create random mac address, at random sec intervals to 
# prevent MAC change pattern/location analysis/identification/access point
# linkage tracking;
# requires macchanger; jme0719a@harford.edu 

mac=wlan0 	# wifi card goes here
hightime=1000   # set highest number of seconds between next random MAC change time
lowtime=1       # set lowest number of seconds between next random MAC change time
while :
do
	rando=$((RANDOM%$hightime+$lowtime))
	sleep $rando
	echo 'MAC changed after:' $rando'sec'
	ifconfig $mac down;macchanger -r $mac;ifconfig $mac up
done
