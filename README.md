# MACcleaner
README:

This script was written to avoid common MAC hardware address tracking. 
Even dept stores will track your MAC, linking it to your identity as
you bring your items to a cash register. MAC addresses are the permanent 
hardware address tied to your computer WIFI/Ethernet card etc. In fact,
these are one of the biggest ties to your identity. This small bash script 
changes your wifi card to a random MAC address every few minutes at 
random intervals. 

Drones also collect MAC addresses to track identities, violating 
UN Declaration of Human Rights: #12 is privacy. Privacy is a right.

Why change MAC at random time intervals? Because analysis depends on recognizing 
patterns. If your MAC were to change exactly every 5 minutes one could 
correlate the new MAC address detections every minutes to your identity. 
So this script makes the mac address change at completely random times. 
You can adjust the lowest -> highest time differences in the script variables.

Using random intervals ensures you are not creating a pattern on the 
networks. 

Also a common issue just running macchanger is MAC address resets to permanent
(original/identity) MAC address upon disconnect from a network/wifi driver
issues. By running this script you add many more mac addresses to the mix
& giving a sort of needle in a haystack for those not hard drive installs.
-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Add button for maccleaner/ghostmac at top of MATE desktop:

Save the script to a file in text editor (or download from github).

Open terminal.

`chmod +x maccleaner`. 
(or name ghostmac, kind of identifies purpose in name). 

Move to command path directory:
'mv scriptname /usr/bin' (this puts it in path for command execution)

Rightclick top panel, click "Add To Panel". 

Then "Create Application launcher". 

Select Application and change it to "Application in terminal." 

Command for the launcher: `sudo maccleaner` (or ghostmac, whatever
you name it; also make sure you change from "Application" to 
"Application in Terminal")

Now just clicking the panel button will launch a terminal displaying status
of MAC changes including seconds from last MAC change (in case
you want a status window to keep an eye on MAC address history/timing.

This script was created with ethical intentions to fight against surveillance
abuse MAC address tracking. 

If you want to contact me, email: jme0719a@harford.edu

Thanks Alvaro Lopez Ortega <alvaro@alobbs.com> for writing macchanger which
this script depends on, making life easier, saving me code.
