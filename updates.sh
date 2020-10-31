#!/bin/bash

updates=$(apt list --upgradeable | sed 1d | cut -d / -f 1) 
amount=$(echo "$updates" | wc -l)

if [ -z $updates ]; then
	echo ""
else
	echo " $amount"
fi


if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
then
	 notify-send "$updates"
fi

