#!/bin/bash

disk=$(df | awk 'NR==4{print $4}')
space=$(echo "scale=1; ${disk} / 1024 ^ 2" | bc)

echo " ${space}"
