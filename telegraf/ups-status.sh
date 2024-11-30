#!/usr/bin/env bash
UPS=ups
HOST=$1
NAME=$2

STATS=$( \
  upsc ups@${HOST} 2> /dev/null | \
  sed -r "s/\: ([A-Za-z]+.*)$/\: \"\1\"/g" | \
  sed "s/: /=/g" | \
  tr \\n , | \
  sed "s/,$//g" \
)
echo ups,ups_name=${UPS},host=${NAME} ${STATS}
