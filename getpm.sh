#!/bin/bash

pass=$(echo "info nordskov" | protonmail-bridge --cli | awk 'NR==22{print $2}')

#sed -i "s/.*set my_pass=.*/set my_pass=$pass/" ~/Documents/keys/mail
#sed -i "s/.*remotepass =.*/remotepass = $pass/" ~/.offlineimaprc

echo $pass
