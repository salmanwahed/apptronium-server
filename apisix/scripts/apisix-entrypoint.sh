#!/bin/sh
set -e

echo "[entrypoint] Rendering APISIX config from template..."
envsubst < /usr/local/apisix/conf/config.template.yaml > /usr/local/apisix/conf/config.yaml

echo "[entrypoint] Starting APISIX..."
exec /usr/bin/apisix start
echo "[entrypoint] APISIX started successfully."