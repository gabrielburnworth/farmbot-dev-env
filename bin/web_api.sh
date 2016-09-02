#!/bin/bash
source rvm
echo "Starting Web Api"
cd $WD/FarmBot-Web-API
if [ ! -e $WD/"${PWD##*/}".setup ]; then
  bundle install
  echo "" > $WD/"${PWD##*/}".setup
fi
rails s
bash
