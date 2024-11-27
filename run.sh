#!/usr/bin/env bash
VUEGRAF_CONFIG=./vuegraf/vuegraf.json

echo "Generating: ${VUEGRAF_CONFIG}"
eval export $(cat .env)
envsubst < ${VUEGRAF_CONFIG} > ./data/${VUEGRAF_CONFIG}

docker compose up
