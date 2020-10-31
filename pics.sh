#!/bin/bash

folder="${XDG_DATA_HOME:-${HOME}/Pictures}/screenshots"

# Left click
if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
then
	xdg-open "${folder}"

# Right click
elif [[ "${BLOCK_BUTTON}" -eq 3 ]]; 
then

	 rm -r "${folder}"
	 mkdir "${folder}"
fi

screenval=$(ls -U -1 "${folder}" | wc -l)


if (( screenval == 0 ));
then
	echo ""
else
	echo " ${screenval}"
fi
