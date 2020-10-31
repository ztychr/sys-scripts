#!/bin/bash

trashdir="${XDG_DATA_HOME:-${HOME}/.local/share}/Trash"

# Left click
if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
then
	xdg-open "${trashdir}/files"

# Right click
elif [[ "${BLOCK_BUTTON}" -eq 3 ]]; 
then

# Delete all files permanently (unlink them)
	rm -r "${trashdir}/files"
	rm -r "${trashdir}/info"

# Create new directory
	mkdir "${trashdir}/files"
	mkdir "${trashdir}/info"
fi

trashval=$(ls -U -1 "${trashdir}/files" | wc -l)


if (( trashval == 0 ));
then
	echo ""
else
	echo " ${trashval}"
fi
