#!/usr/bin/env bash

set -e

if [ "${STAGE}" == "dev" ]; then
  echo "Running DEV server (http://localhost:5000)"
  exec python identicon.py
elif [ "${STAGE}" == "unit" ]; then
  echo "Running unit tests"
  exec python identicon_test.py
else
  echo "Running PROD server (http://localhost:9090), stats (http://localhost:9091)"
  exec uwsgi \
    --wsgi-file /app/identicon.py \
    --http 0.0.0.0:80 \
    --callable app \
    --stats 0.0.0.0:81 \
    --stats-http
fi
