#!/bin/bash


ssid=$(iwgetid -r)
str=$(grep 'wlp0s20f3' /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

#dbm=$(iwconfig wlp0s20f3 | awk 'NR==6{print $4}' | cut -c 8,9)
#str=$(( (-$dbm + 100) * 2 ))

if [ -z $ssid ];
then
        echo ""
else

	if (( $str < 0 ));
	then
		echo " ${ssid} 0%"
	elif (( $str > 99 ));
	then
		echo " ${ssid} 100%"

	else
		echo " ${str}%  ${ssid}"
	fi
fi

