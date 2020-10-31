#!/bin/bash


mail="/home/ztychr/.mail/INBOX/new"


#if [[ "${BLOCK_BUTTON}" -eq 1 ]]; 
#then
#	notify-send "MAILS"
#fi

mailval=$(ls -U -1 "${mail}" | wc -l)

if (( mailval == 0 ));
then
	echo ""
else
	echo " ${mailval}"
fi

