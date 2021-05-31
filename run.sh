#!/bin/bash
DOT_ENV_FILE=".env"

function postgres_init() {
  while true; do
    read -p "Set your postgres USER: " USER
    echo
    if [[ ${#USER} -ge 4 ]]; then
      echo "USER=$USER" >$DOT_ENV_FILE
      break
    else
      echo "USER must contain at least 4 characters"
    fi
  done
  while true; do
    read -s -p "Set your postgres PASSWORD: " PASSWORD
    echo
    if [[ ${#PASSWORD} -ge 5 ]]; then
      echo "PASSWORD=$PASSWORD" >>$DOT_ENV_FILE
      break
    else
      echo "PASSWORD must contain at least 5 characters"
    fi
  done

}

postgres_init

docker network create postgres-database
docker compose up -d
