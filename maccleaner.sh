#!/bin/bash
# wifi cards commonly reset depending on task/driver
# maccleaner sets MAC address on a timed basis to prevent broadcast leaks
# questions/concept: righttoprivacy@tutanota.com
# requires macchanger

hightime=1000  # highest number of seconds between next random MAC change time
lowtime=1   # lowest number of seconds between next random MAC change time

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "|maccleaner:Prevents MAC address reset leaks problem|"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "promotes privacy with randomized mac change timing setting"
echo "press 'r wlan0' to enter random mode (times/addresses)..."
echo "press 's wlan0' to create permanent MAC address setting mode..."
echo "setting device:"
read setting device

if [ "$setting" == "r" ];then

	while :
	do
		rando=$((RANDOM%$hightime+$lowtime))
		echo 'ghosting MAC: random times at random addresses (privacy mode):'
		ifconfig $device down;macchanger -r $device;ifconfig $device up
		echo 'MAC changing in:' $rando'sec'
		sleep $rando
	done
fi


if [ "$setting" == "s" ];then
	echo "Set the address (and help prevent reset address leaks)"
	echo "MAC:";read mac
		while :
		do
			ifconfig $device down;macchanger -m $mac $device;ifconfig $device up > /dev/null 2>&1 &
			echo "Perfect!"
			sleep $rando
		done

fi 
