#!/usr/bin/env bash
echo "Starting nginx-proxy..."
docker-compose -p proxy -f ./docker-compose.proxy.yml up -d
echo "Starting web app..."
docker-compose -f ./docker-compose.yml up -d