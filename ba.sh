#!/bin/bash

chars=$(pdftotext /home/ztychr/Desktop/Bachelor.pdf - | wc -m)
pages=$(echo "scale=4; ${chars} / 2400" | bc)

echo "Characters: ${chars} Pages: ${pages}"
