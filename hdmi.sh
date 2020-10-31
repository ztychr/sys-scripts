#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ -z $1 ] ; then
	echo "Usage: `basename $0` [on] [left/right]"
	echo "       `basename $0` [off]"
	exit 0
else

	if [ $1 = 'off' ]; then
		xrandr --output HDMI2 --off
	elif [ $1 = 'on' ]; then
		xrandr --output HDMI2 --auto --$2-of eDP1
	else
		echo "Couldn't parse"
	fi
fi
