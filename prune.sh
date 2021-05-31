#!/bin/bash
DOT_ENV_FILE=".env"
if [ ! -f "$DOT_ENV_FILE" ]; then
  echo -e "No .env file, postgres is most likely not running. \nTerminating prune...."
  exit 1
fi

./stop.sh
docker network rm postgres-database
clear
echo "===Removing env file..."
sleep 3
rm "$DOT_ENV_FILE"
clear
echo "Done system prune..."
