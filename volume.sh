#!/bin/bash
status=$(amixer | awk 'NR==6{print $6}')
format=$(amixer | awk 'NR==6{print $5}' | cut -c 3)
maxvol=$(amixer | awk 'NR==6{print $5}')


if [ "$format" = "%" ];
then
	volume=$(amixer | awk 'NR==6{print $5}' | cut -c 2)
else
	volume=$(amixer | awk 'NR==6{print $5}' | cut -c 2,3)
fi


if [ "$status" = "[on]" ];
then
	if [ "$maxvol" = "[100%]" ];
	then
        	echo " 100%"

        elif (( volume >= 40 ));
        then
                echo " ${volume}%"
        elif (( volume < 40 && volume > 0 ));
        then
                echo " ${volume}%"

#        elif (( volume < 10 ));
#        then
#                echo " 0${volume}%"

	elif (( volume == 0 ));
        then
                echo " ${volume}%"
        fi

elif [ "$status" = "[off]" ];
then
        if [ "$maxvol" = "[100%]" ];
        then
                echo " 100%"

	else
		echo " ${volume}%"
	fi
fi

