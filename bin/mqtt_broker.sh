#!/bin/bash
echo "Starting MQTT Broker"
# Sleep for a few seconds to make sure the Web_api is up.
sleep 4
# Start teh MQTT broker.
cd $WD/mqtt-gateway
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  npm install
  echo "" > $WD/"${PWD##*/}".setup
fi
node app/index.js
read
bash
