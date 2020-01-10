***If you use/edit/redistribute my concept/code make sure to credit:
righttoprivacy@tutanota.com. E-mail me with questions.*** (11.25.2019)

# MACcleaner

(GPL) original concept/code 11.25.2019

### README ###

***UPDATE: Now including hostname randomization***
[ hostnames can be equally unique; Your comp hostname is logged 
at every LAN/Network you connect to ]

[ Ideal for Privacy/Human Rights ]

MAC address tracking is the basis for modern non-GPS movement tracking.
Think of your MAC address as the publicly broadcasting fingerprint to your 
hardware device. It doesn't change & it broadcasts your location-- whether 
you ever connect to a wifi network or not.

This can further be correlated with facial recognition, 
& even your name if you give it to a tracking dept store.

Drones map our movements by MAC address, even if 
we never connect to wifi. Access points store your MAC/hostname addresses.

[ This is why I wrote maccleaner: predatory address tracking. ]

# MODES:

 extra privacy/random mode (r) sets continually changing 
 random addresses at continually changing random times,
 'r' setting most private: random continually changing times/hostnames/mac addresses
 'i' make device mimic single iPhone- changes hostname on wifi/network to match single randomly generated iPhone mac address
 'c' cellphone mode makes your device name/mac mimic very popular phone
 'a' mode sets single randomized mac for home/longterm use; resets to prevent leaks;
  [ Should work on most if not all Linux systems ]

concept/code by righttoprivacy@tutanota.com; also on Parrot Linux Forums @RightToPrivacy
My Protect Your Privacy Youtube Channel: https://www.youtube.com/channel/UChVCEXzi39_YEpUQhqmEFrQ
My Blog: https://politictech.wordpress.com
 
# REQUIREMENTS:

* Linux (Any) * Bash

# INSTALLATION: 
(requires root)

1.) mkdir /usr/share/maccleaner
2.) Move OUI.final & OUI.apple to /usr/share/maccleaner
3.) chmod +x maccleaner

# USE:

./maccleaner

follow the prompts and choose your wifi device & mode

# OR

follow instructions at bottom of this README to add command/simple 
button for easy access.

# Why maccleaner?

MAC address tracking is one of the most pervasive/constant forms 
of surveillance abuse out there. Passive sniffer trackers constantly 
gobble up our mac address broadcasts, tracking us as we pass 
by them, mapping us out along access points/beacons. 

***This occurs even if you do not connect.***

Even dept stores track MACs, linking it to your identity, facial recognition
scans, even your name/phone number if you give it to a store/cashier.. MAC addresses are the permanent 
hardware address tied to your computer WIFI/Ethernet card etc. In fact,
these are one of the biggest ties to your identity/movements. This small 
bash script changes your wifi card to a random MAC address every few minutes at 
randomized continually changing time intervals to prevent patterna analysis. 

Drones also collect MAC addresses to track identities, violating 
UN Declaration of Human Rights: #12 is privacy. Privacy is a basic
Human Right.

**Why change MAC at random changing time intervals?** Because analysis depends 
on recognizing patterns. If your MAC were to change via cronttab exactly 
every 5 minutes one could correlate the new MAC address detections every 
minutes to your identity. 

This script offers options to make the mac address change at completely random 
changing times. You can adjust the lowest -> highest time differences in script variables.

Solves common issue in mac address changing where MAC address resets to permanent
(original/identity) MAC address upon disconnect from a network/wifi driver
issues. By running this script you shorten the time between mac changes. I ran
KISMET for 24hr straight to test it. Not a single real MAC address leak. Also
adds many more mac addresses to the mix giving a sort of needle in a haystack 
strategy & constantly moving address.

Works great alongside Parrot OS's AnonSurf/Tor to route traffic, but nothing outside 
this script is required for it to work (outside bash). This script (maccleaner)
changes your device address & KISMET functions well while using it (for ethical
purposes)

-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

# Add button for maccleaner/ghostmac at top of MATE desktop:

Save the script to a file in text editor (or download from github).

Open terminal.

chmod +x maccleaner. 

Move to command path directory:
'mv scriptname /usr/bin' (this puts it in path for command execution)

Rightclick top panel, click "Add To Panel". 

Then "Create Application launcher". 

Select Application and change it to "Application in terminal." 

Command for the launcher: "sudo maccleaner" (or ghostmac, whatever
you name it; also make sure you change from "Application" to 
"Application in Terminal")

Now just clicking the panel button will launch a terminal displaying status
of MAC changes including seconds from last MAC change (in case
you want a status window to keep an eye on MAC address history/timing.

***This script was created with ethical intentions***

If you want to contact/have ideas/questions email: righttoprivacy@tutanota.com


