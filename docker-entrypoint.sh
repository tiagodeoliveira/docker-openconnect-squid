#!/bin/bash

set -e

if [ "$1" != "bash" ]; then
  echo 'Starting OpenConnect'

  read -p "Address: " address
  read -p "Username: " username

  # read -p "Password: " -s main_password
  # echo ""
  # read -p "2fa password: " -s second_password

  openconnect -u $username -b $address
  echo 'Started OpenConnect!'

	exec squid3 -NYCd 1
else
  exec $@
fi
