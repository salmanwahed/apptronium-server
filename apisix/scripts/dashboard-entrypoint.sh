#!/bin/sh
set -e

echo "[entrypoint] Rendering Dashboard config from template..."
envsubst < /usr/local/apisix-dashboard/conf/conf.template.yaml > /usr/local/apisix-dashboard/conf/conf.yaml

echo "[entrypoint] Starting APISIX Dashboard..."
exec /usr/local/apisix-dashboard/manager-api
echo "[entrypoint] APISIX Dashboard started successfully."
