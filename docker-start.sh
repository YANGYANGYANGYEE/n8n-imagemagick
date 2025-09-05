#!/usr/bin/env sh
set -e

mkdir -p /home/node/data
chown -R 1000:1000 /home/node/data || true
chmod -R 775 /home/node/data || true

exec /docker-entrypoint.sh
