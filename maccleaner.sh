#!/bin/bash
# Simple script changes MAC addy at random sec intervals to 
# thwart MAC pattern/location analysis/identification/tracking;
# MAC addresses are mapped out w/drones to track ppl;
# MAC addresses tend to reset to original trackable MAC on disconnect/reset of 
# wifi; this script ensures MAC continues changing after such incident.
# requires macchanger; Contact righttoprivacy@tutanota.com

mac=wlan0 	# your wifi card goes here
while :
do
	rando=$((RANDOM%100+60))
	sleep $rando
	echo 'MAC changed after:' $rando'sec'
	ifconfig $mac down;macchanger -r $mac;ifconfig $mac up
done
