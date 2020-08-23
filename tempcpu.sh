#!/bin/bash

temp=$(sensors | awk 'NR==11{print $2}' | cut -c 2,3)

if (( temp >= 80 ));
then
	echo " ${temp}°C"

elif (( temp < 80 ));
then
        echo " ${temp}°C"

fi
