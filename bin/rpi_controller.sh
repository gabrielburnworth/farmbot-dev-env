#!/bin/bash
source rvm
# Sleep for a few seconds to make sure the Web_api is up.
sleep 4

echo "Starting RPI Controller"
cd $WD/farmbot-raspberry-pi-controller
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  bundle install
  rake db:setup
  # This one requires some user input. I think it will just work tho
  ruby setup.rb
  echo "" > $WD/"${PWD##*/}".setup
fi
ruby farmbot.rb
bash
