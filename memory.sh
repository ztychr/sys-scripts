#!/bin/bash

topten=$(ps axch -o cmd:15,%mem --sort=-%mem | head)

memtota=$(cat /proc/meminfo | awk 'NR==1{print$2}')
memavai=$(cat /proc/meminfo | awk 'NR==3{print$2}')
memused=$(( $memtota - $memavai  ))
memperc=$(( 100 * $memused / $memtota -5 ))

if (( $memperc < 10 ));
then
	echo " 0$memperc%"
else
       	echo " $memperc%"
fi

if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
then
	 notify-send "$topten"
fi
