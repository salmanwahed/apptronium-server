#!/bin/sh

if [ $? -eq 0 ]; then
  echo "Certificates renewed successfully. Reloading Nginx."
  # Use the Docker CLI to reload the nginx container
  # 'nginx_production' is the container name from nginx/docker-compose.yml
  docker container exec nginx_production nginx -s reload
else
  echo "Certificate renewal not needed or failed."
fi