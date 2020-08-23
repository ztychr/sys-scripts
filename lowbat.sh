#!/bin/bash

batt=$(acpi | awk 'NR==1{print $4}' | rev | cut -c 3- | rev)


if (( batt < 10 ));
then
	notify-send "Battery level is ${batt}%. Plug me in plz"

fi
