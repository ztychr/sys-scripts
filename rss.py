#!/usr/bin/env python3

import os
import feedparser

url = "https://www.dr.dk/nyheder/service/feeds/allenyheder"
feed = feedparser.parse(url)

date = feed.entries[0].get("published")
title = feed.entries[0].get("title")
link = feed.entries[0].get("link")

print(date[17:22]+': ' + title)
