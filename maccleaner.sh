#!/bin/bash
# Simple script changes MAC addy at random sec intervals to 
# thwart MAC pattern/location analysis/identification/tracking;
# MAC addresses are mapped out w/drones/access points to track MAC locations;
# MAC addresses tend to reset to original permanent trackable MAC on disconnect/reset of 
# wifi; this script continues MAC changing after such incident.
# requires macchanger; righttoprivacy@tutanota.com

mac=wlan0 	# your wifi card goes here
while :
do
	rando=$((RANDOM%500+200))	# change numbers to change random time frames between random changes
	sleep $rando
	echo 'MAC changed after:' $rando'sec'     # lists last random change time frame
	ifconfig $mac down;macchanger -r $mac;ifconfig $mac up
done
