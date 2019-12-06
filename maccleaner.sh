#!/bin/bash
# extra privacy/random mode (r) sets continually changing 
# random addresses at continually changing random times,
# 'r' setting good for out in public/travel;
# 'c' cellphone mode makes your device name/mac mimic very popular phone
# 'a' mode sets single randomized mac for home/longterm use; resets to prevent leak
# should work on most if not all Linux systems;
# questions/concept: righttoprivacy@tutanota.com

hightime=1200  	# highest number for timing randomizer (higher the number longer potential change
lowtime=500    	# lowest number (lower the number, lower potential time changed)
reset_time=600 	# time beteen ensuring mac address is set right- if ur card resets a lot set lower
r_mode_dev="Desktop"		# most randomized mac changes privacy mode (Read the README for uses)
c_mode_dev="Apple"			# cell phone device mimic 'c' mode: mac addresses set to match brand
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
/bin/echo -e "|\e[1;31mmaccleaner:\e[0m \e[1;37m mac anonymization time/address host randomizer\e[0m|"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo ""
sleep 1
/bin/echo -e "\e[0;36mconcepts/contact: righttoprivacy@tutanota.com\e[0m"
sleep .5
/bin/echo -e '        .--.'
sleep .5
/bin/echo -e '       |0_0 |'
sleep .5
/bin/echo -e '       |:_/ |'
sleep .5
/bin/echo -e '      //   \ \'
sleep .5
/bin/echo -e '     (|     | )'
sleep .5
/bin/echo -e '    /'\_   _/'\\'
sleep .5
/bin/echo -e '    \___)=(___/'
sleep .5
echo ""
sleep 1
/bin/echo -e "\e[1;37mAutomating Linux laptop privacy:\e[0m"
echo "------------------------------- " 
sleep .5
echo "changes hostname to blend in (in public wifi/LAN/direct connect logs);" 
sleep .5
echo "offers continually changing randomized device/cellphone mimics;" 
sleep .5
echo "README contains different reasons for setting selections;" 
sleep .5
/bin/echo -e "----------------------------------------------------------"
sleep 1
/bin/echo -e "press '\e[0;36mr wlan0\e[0m' to enter continually changing randomized high privacy mode: "
/bin/echo -e "random times/random MAC addresses/generic hostname change..."
echo ""
/bin/echo -e "press '\e[0;36mi wlan0\e[0m' to enter single randomly generated iPhone (hostname/MAC) mimic mode"
echo ""
sleep 1
/bin/echo -e "press '\e[0;36mc wlan0\e[0m' to enter changing cellphone device name/MAC mimic mode (matching mac/hostname)" 
echo ""
sleep 1
/bin/echo -e "press '\e[0;36ms wlan0 MAC\e[0m' to enter MAC address of your choice..."
/bin/echo -e "(prevent mac leaks; retains same address..)"
/bin/echo -e ""
sleep 1
/bin/echo -e "press '\e[0;36ma wlan0\e[0m' to generate/set a single hostname/random MAC address & keep it..."
/bin/echo -e "(prevents mac leaks; retains same address..)"
/bin/echo -e "----------------------------------------------------------- \e[0m"
sleep 1
echo "setting & device:"
read setting device mac
echo ""
if [ "$setting" == "r" ];then
	hostnamectl set-hostname $r_mode_dev
	/bin/echo -e "Your computer name is now \e[1;31m$r_mode_dev\e[0m on WiFi networks"
		while :
		do
			hexchar="ABCDEF0123456789"
			beg=$(shuf -n 1 OUI.final)
			end=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
			mac=$beg$end
			rando=$((RANDOM%$hightime+$lowtime))
			/bin/echo -e "\e[1;37mghosting MAC/device name\e[0m: random times at random addresses '(MAC address in privacy mode)'"
			/bin/echo -e "Changing MAC to: \e[1;31m$mac\e[0m"
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			sleep 1
			echo ""
			echo 'next change: random times, random addresses in:' $rando'sec'
			sleep $rando
		done
fi

if [ "$setting" == "i" ];then
	hostnamectl set-hostname $c_mode_dev
	/bin/echo -e "Your computer's name is now \e[1;31m$c_mode_dev\e[0m on WiFi networks"
	hexchar="ABCDEF0123456789"
	beg=$(shuf -n 1 OUI.apple)
	end=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
	mac=$beg$end
	/bin/echo -e "Changing MAC to stay at: \e[1;31m$mac\e[0m"
	/bin/echo -e "this setting mimics a single iPhone device both on the network & off (passively);"
	/bin/echo -e "ensuring same address (preventing leaks) every: $reset_time sec"
		while :
		do
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			sleep $reset_time 
		done
fi

if [ "$setting" == "c" ];then
	hostnamectl set-hostname $c_mode_dev
	/bin/echo -e "Your computer name is now \e[1;31m$c_mode_dev\e[0m on WiFi networks"
		while :
		do
			hexchar="ABCDEF0123456789"
			beg=$(shuf -n 1 OUI.apple)		
			end=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
			mac=$beg$end
			rando=$((RANDOM%$hightime+$lowtime))
			/bin/echo -e "\e[1;37m ghosting MAC/device name:\e[0m random Cellphone MAC addresses/device name blends in w/cellphones"
			/bin/echo -e "Changing MAC to: \e[1;31m$mac\e[0m"
			sleep 1
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			echo ""
			echo 'next change: random times, random addresses in:' $rando'sec'
			sleep $rando
		done
fi

if [ "$setting" == "s" ];then
	hostnamectl set-hostname $r_mode_dev
	/bin/echo -e "Your new computer hostname (logged by WiFi/LAN router) is now \e[1;31m$r_mode_dev\e[0m"
	echo "ensuring same MAC address (preventing leaks) in: $reset_time sec"
		while :
		do
			rando=$((RANDOM%$hightime+$lowtime))
			/bin/echo -e "MAC being set to: \e[1;31m$mac\e[0m"
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			sleep $reset_time
		done

fi 

if [ "$setting" == "a" ];then
	hostnamectl set-hostname $r_mode_dev
	/bin/echo -e "Your new computer hostname (logged by WiFi/LAN router) is now \e[1;31m$r_mode_dev\e[0m"
	hexchar="ABCDEF0123456789"
	beg=$(shuf -n 1 OUI.final)
	end=$( for i in {1..6} ; do echo -n ${hexchar:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )
	mac=$beg$end
	/bin/echo -e "Changing MAC to stay as: \e[1;31m$mac\e[0m"
	/bin/echo -e "this setting mimics a single random Desktop Computer on WiFi networks & off (passively);"
	/bin/echo -e "ensuring same address (preventing leaks) every: $reset_time sec"
		while :
		do
			ip link set dev $device down;ip link set dev $device address $mac;ip link set dev $device up;
			sleep $reset_time 
		done
fi
