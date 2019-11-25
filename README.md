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

Also a common problem with macchanger was MAC address reset to permanent
(original/identity) MAC address upon disconnect from a network/wifi driver
issues. By running this script you add many more mac addresses to the mix
& ensure you are a needle in a haystack.

This script was created with ethical intentions. If you want to contact me,
email: righttoprivacy@tutanota.com
