#!/bin/bash
# wifi cards commonly reset to perm address depending on task/driver
# this is a fix and also further anonymizing your mac location
# privacy/random mode (r) sets continually changing random addresses at continually changing random times
# 'ghosting' your mac/location
# should work on most if not all Linux systems
# questions/concept: righttoprivacy@tutanota.com

hightime=400  # highest number for timing randomizer (higher the number longer potential change
lowtime=40   # lowest number (lower the number, lower potential time changed)

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
/bin/echo -e "|\e[1;31mmaccleaner:\e[0m \e[1;37m mac anonymization time/address randomizer\e[0m|"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo -e "\e[0;36mcontact: righttoprivacy@tutanota.com\e[0m"
echo "mac privacy with randomized (r) mac change timing setting"
echo -e "press '\e[0;36mr wlan0\e[0m' to enter random mode (times/addresses)..."
echo -e "press '\e[0;36ms wlan0 MAC\e[0m' to enter MAC address into permanent setting mode..."
echo "setting device:"
read setting device mac
if [ "$setting" == "r" ];then

		while :
		do
			hexchar="ABCDEF0123456789"
			beg=$(shuf -n 1 OUI.final)
			#beg=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
			end=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
			mac=$beg$end
			#macchar="${beg:1}"
			#mac=$macchar$end
			rando=$((RANDOM%$hightime+$lowtime))
			echo 'ghosting MAC: random times at random addresses (privacy mode):'
			echo -e "Changing MAC to: \e[1;31m$mac\e[0m"
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;

			echo 'next change: random times, random addresses in:' $rando'sec'
			sleep $rando
		done
fi


if [ "$setting" == "s" ];then
	echo "Sets address (prevents address reset leaks)"
		while :
		do
			rando=$((RANDOM%$hightime+$lowtime))
			echo "MAC being reset to: \e[1;31m$mac\e[0m"
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			echo 'ensuring MAC set to same address (preventing leaks) in: '$rando'sec'
			sleep $rando
		done

fi 
