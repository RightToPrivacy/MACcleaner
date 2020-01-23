***If you use/edit/redistribute my concept/code credit:
righttoprivacy@tutanota.com. Thank you. E-mail me for questions.*** 

# MACcleaner

To enhance Security 
and data/device tracking

(GPL) original concept/code 11.25.2019

### README ###

**For Ethical Purposes**

***UPDATE: Now including hostname randomization***
[ hostnames can be equally unique to your device; 
Your hostname is logged at every public/shared LAN/Network 
you connect to; Stores/advertisers/hackers may collect it ]

[ Ideal for Security/Privacy/Human Rights ] 

Security Idea: in some attacks an attacker may need to spoof your
MAC address. This tool may help narrow down an attacker via analysis.

MAC address tracking is the basis for much of device tracking.
Think of your MAC address as the publicly broadcasting fingerprint to your 
hardware device. It doesn't change & it broadcasts your location-- whether 
you ever connect to a wifi network or not.

This can further be correlated with other data leading to abuse.

Access points store your MAC/hostname addresses.

[ This is why I wrote maccleaner: predatory tracking by data/store trackers. Also
places where people are persecuted for human rights/journalism ]

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

2.) Move OUI.final & OUI.apple files to /usr/share/maccleaner (required files for valid random MAC generation)

3.) chmod +x maccleaner.sh

4.) to install as a command move maccleaner.sh to /usr/bin/maccleaner (optional step for easy command access)

# USE:

./maccleaner

Or

maccleaner (if you moved to /usr/bin or other executable path)

follow the prompts and choose your wifi device & mode

# OR

follow instructions at bottom of this README to add command/simple 
button for easy access.

# Why maccleaner?

MAC address tracking is one of the most pervasive/constant forms 

of tracking abuse out there. Passive sniffer trackers constantly

gobble up mac address broadcasts, tracking as we pass 

by them, mapping out along access points/beacons.  

***This occurs even if you do not connect.***

Even dept stores track MACs, linking device identity, facial recognition
scans, even your name/phone number if you give it to a store/cashier.. 
MAC addresses are the permanent hardware address tied to your computer 
WiFi/Ethernet card etc. In fact, these are one of the biggest ties to your 
device. This script changes your wifi card to a random 
MAC address every few minutes at randomized continually changing time 
intervals to prevent patterns picked up by trackers. 

Advertisers are now using Drones to collect MAC addresses.

UN Declaration of Human Rights: #12 is privacy. Privacy is a basic
Human Right.

**Why change MAC at random changing time intervals?** tracking depends 
on recognizing patterns. If your MAC were to changed via cronttab exactly 
every 5 minutes, a tracker could then correlate the new MAC address by 
picking up the static patterns in changes.

Offers options to make mac address change at completely random 
changing times. You can adjust the lowest -> highest time differences in script variables.

Solves common issue in mac address changing where MAC address resets to permanent
(original/identity) MAC address upon disconnect from a network/wifi driver
issues. By running this script you shorten the time between mac changes. Ran
KISMET for 24hr straight to test it. Not a single real MAC address leak. Also
adds many more mac addresses to the mix giving a sort of needle in a haystack 
strategy & constantly moving address.

(I added r function in this script to my fork of Parrot Linux Anonsurf)

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

***This script was created with ethical human rights/security intentions*** 

If you want to contact/have ideas/questions email: righttoprivacy@tutanota.com


