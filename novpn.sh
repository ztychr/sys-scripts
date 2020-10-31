#!/bin/bash

proton="/proc/sys/net/ipv4/conf/proton0"

if [[ -d "$proton" ]];
then
	echo ""
else
	notify-send "No VPN." "Connect me please." -i file:///home/ztychr/Pictures/Icons/nm-vpn-standalone-lock.svg

fi

