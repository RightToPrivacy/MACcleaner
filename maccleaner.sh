#!/bin/bash
# Simple script to create random mac address, at random sec intervals to 
# prevent MAC change pattern/location analysis/identification/tracking;
# MAC address gets reset to original on disconnect/reset of 
# wifi; this script ensures MAC continues changing after such incident.
# requires macchanger; Contact me: devurandom@protonmail.com 

mac=wlan0 	# your wifi card goes here
while :
do
	rando=$((RANDOM%100+60))
	sleep $rando
	echo 'MAC changed after:' $rando'sec'
	ifconfig $mac down;macchanger -r $mac;ifconfig $mac up
done
