#!/bin/bash

status=$(service bluetooth status | awk '/Active:/{print $2}')

if [ "$status" = "active" ];
then
	echo ""
fi
