#!/bin/bash
char=$(acpi | awk 'NR==1{print $3}' | rev | cut -c 2- | rev)
lefc=$(acpi | awk 'NR==1{print $5}' | rev | cut -c 7- | rev)

left=$(acpi | awk 'NR==1{print $5}' | rev | cut -c 4- | rev)
batt=$(acpi | awk 'NR==1{print $4}' | rev | cut -c 3- | rev)
max=$(acpi | awk 'NR==1{print $4}')

unknownstate=$()

if [ "$max" = "100%" ];
then

	if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " 100% ${left}"
        else
                echo " 100%"
        fi

elif [ "$char" = "Unknown" ];
then
        if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " ${max} ${left}"
        else
                echo " ${max}"
        fi


elif (( batt >= 85 ));
then
	if [[ $lefc =~ ^[0-9]+$ ]];
	then
        	echo " ${batt}% ${left}"
	else
		echo " ${batt}%"
	fi

elif (( batt < 85 && batt >= 60 ));
then
        if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " ${batt}% ${left}"
        else
                echo " ${batt}%"
        fi

elif (( batt < 60 && batt >= 40 ));
then
        if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " ${batt}% ${left}"
        else
                echo " ${batt}%"
        fi

elif (( batt < 40 && batt >= 15 ));
then
        if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " ${batt}% ${left}"
        else
                echo " ${batt}%"
        fi

elif (( batt < 15 ));
then
        if [[ $lefc =~ ^[0-9]+$ ]];
        then
                echo " ${batt}% ${left}"
        else
                echo " ${batt}%"
        fi
fi

#
#
#
#
#
