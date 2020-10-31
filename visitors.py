#!/usr/bin/env python

import sys

usage="usage: gunzip -c <access.log.gz> | visitors.py"


if sys.argv[1] == "-h" or "--help":
    print usage
    sys.exit()

try:

    input = sys.stdin

    c = 0

    for line in input:
        fields = line.strip().split()

        status_code = fields[8]
        requested = fields[6]

        if status_code == "200":
            if not ".svg" or ".img" or ".png" or ".css" in requested:
                if requested != "*":
                    c+=1
                    #print requested

    print c


except:
    print "Unknown operation"
    print usage
