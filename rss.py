#!/usr/bin/env python3

import os
import feedparser

url = "https://www.dr.dk/nyheder/service/feeds/allenyheder"
feed = feedparser.parse(url)

date = feed.entries[0].get("published")
title = feed.entries[0].get("title")
link = feed.entries[0].get("link")

print(date[17:22]+': ' + title)
print(link)

if os.environ.get('BLOCK_BUTTON'):
	if (os.environ['BLOCK_BUTTON'] == '1'):
		os.system("xdg-open "+ link)
	#elif (os.environ['BLOCK_BUTTON'] == '2'):
	#elif (os.environ['BLOCK_BUTTON'] == '3'):

