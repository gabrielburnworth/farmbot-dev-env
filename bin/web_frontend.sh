#!/bin/bash
echo "Starting Web Front End"

# Sleep for a few seconds to make sure the Web_api is up.
sleep 4

cd $WD/farmbot-web-frontend
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  npm install
  echo "" > $WD/"${PWD##*/}".setup
fi
npm start
bash
