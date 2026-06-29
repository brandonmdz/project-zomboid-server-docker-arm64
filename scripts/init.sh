#!/bin/bash

set -e

echo "Updating Project Zomboid server..."

FEXBash "/home/steam/Steam/steamcmd.sh +force_install_dir /home/steam/pzserver +login anonymous +app_update 380870 +quit"

echo "Starting Project Zomboid server..."

exec FEXBash "/home/steam/pzserver/start-server.sh -servername ${SERVERNAME}"
