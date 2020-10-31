#!/bin/bash

news=$(/usr/bin/python3 /home/ztychr/.scripts/rss.py)
oldnews=$(cat /home/ztychr/Documents/keys/news)

if [[ "$news" != "$oldnews" ]];
then
	echo "$news" > /home/ztychr/Documents/keys/news
	notify-send -i file:///home/ztychr/Pictures/Icons/indicator-messages.svg "$news"
fi
