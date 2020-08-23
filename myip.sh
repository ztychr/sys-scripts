#!/bin/sh

ip=$(curl -s icanhazip.com);

if [ -z "$ip" ];
then
	exit
else
	echo "$ip"
fi
