#!/bin/bash
echo "Starting MQTT Broker"
# Start teh MQTT broker.
cd $WD/mqtt-gateway
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  npm install
  echo "" > $WD/"${PWD##*/}".setup
fi
node app/index.js
read
