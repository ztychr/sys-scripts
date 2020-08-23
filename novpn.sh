#!/bin/bash

proton="/proc/sys/net/ipv4/conf/proton0"

if [[ -d "$proton" ]];
then
	echo ""
else
	notify-send "No VPN" "Connect me please." -i file:///usr/share/icons/BlackoutIcons/status/scalable/nm-secure-lock.svg

fi

