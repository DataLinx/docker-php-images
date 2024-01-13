#!/usr/bin/env bash

echo "Building Docker images..."

docker build -t "slimdeluxe/php:7.4-v1.0" -f "php-7.4/Dockerfile" .
docker build -t "slimdeluxe/php:8.1-v1.0" -f "php-8.1/Dockerfile" .
docker build -t "slimdeluxe/php:8.2-v1.0" -f "php-8.2/Dockerfile" .

echo "Build done!"

exit 0
