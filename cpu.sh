#!/bin/bash

topten=$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)

cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | rev | cut -c 3- | rev)
cur=`expr 100 - $cpu`

if (( $cur < 10 ));
then
	echo " 0$cur%"
else
	echo " $cur%"
fi

if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
then
	 notify-send "$topten"
fi

