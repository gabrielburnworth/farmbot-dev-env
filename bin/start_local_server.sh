#!/bin/bash
echo "[WARNING] THERE IS NO ERROR CHECKING IN THIS BECAUSE CONNOR IS LAZY"

echo "Setting Environment."
# These all need to be exported so the new terminal can have them all.
export WD=$HOME/farmbot
export WEB_API_URL=http://localhost:3000
export MQTT_BROKER_URL=localhost
export FBENV=development

# I don't remember why I put this here, but there is PROBABLY a reason for it.
source rvm >> /dev/null
gnome-terminal --tab --title="WEB API" -e "./web_api.sh" \
  --tab --title="MQTT BROKER" -e "./mqtt_broker.sh" \
  --tab --title="WEB FRONTEND" -e "./web_frontend.sh" \
  --tab --title="RPI CONTROLLER" -e "./rpi_controller.sh"

echo "Hopefully That worked who knows"
exit 0
