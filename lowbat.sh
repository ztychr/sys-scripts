#!/usr/bin/bash

battzero=$(acpi | awk 'NR==1{print $4}' | rev | cut -c 3- | rev)

state=$(acpi | awk 'NR==1{print $3}' | rev | cut -c 2- | rev)

battnum=1


if (( battzero == 0 ));
then
        battnum=2
fi

if [[ "$state" = "Unknown" ]];
then
	batt=$(acpi | awk 'NR=='${battnum}'{print $4}' | rev | cut -c 2- | rev)
else
        batt=$(acpi | awk 'NR=='${battnum}'{print $4}' | rev | cut -c 3- | rev)
fi

if (( batt < 10 ));
then
	notify-send "Battery level is ${batt}% - Juice me up" -i  file:///home/ztychr/Pictures/Icons/battery-030.svg
fi

