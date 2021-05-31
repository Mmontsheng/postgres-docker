#!/bin/bash
DOT_ENV_FILE=".env"
if [ ! -f "$DOT_ENV_FILE" ]; then
  echo -e "No .env file, postgres is most likely not running. \nTerminating stop...."
  exit 1
fi
echo "Stopping containers..."
sleep 3
docker compose down
sleep 3
clear
echo "Done stopping containers..."
