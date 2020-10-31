#!/bin/bash

lock=/home/ztychr/.offlineimap/protonmail.lock

if [ -f "$lock" ]; then
    rm $lock 
fi

