#!/bin/bash
echo "Starting Web Front End"
cd $WD/farmbot-web-frontend
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  npm install
  echo "" > $WD/"${PWD##*/}".setup
fi
npm start
