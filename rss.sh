#!/bin/bash

news=$(/usr/bin/python3 /home/ztychr/.scripts/rss.py)
oldnews=$(cat /home/ztychr/Documents/news)

if [[ "$news" != "$oldnews" ]];
then
	echo "$news" > /home/ztychr/Documents/news
	notify-send "$news"
fi
