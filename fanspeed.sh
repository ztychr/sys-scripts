#!/bin/bash

fan=$(sensors | awk 'NR==7{print $2}')

if (( fan > 0 ));
then
	echo " ${fan}"
fi
