#!/bin/bash

proton="/proc/sys/net/ipv4/conf/tun0"
pia="/proc/sys/net/ipv4/conf/proton0"

if [[ -d "$proton" || -d "$pia" ]];
then
	echo ""
fi
