#!/usr/bin/env bash

echo "Building Docker images..."

docker build -t "slimdeluxe/php:7.4-v1.2" -f "php-7.4/Dockerfile" .
docker build -t "slimdeluxe/php:8.1-v1.2" -f "php-8.1/Dockerfile" .
docker build -t "slimdeluxe/php:8.2-v1.2" -f "php-8.2/Dockerfile" .
docker build -t "slimdeluxe/php:8.3-v1.2" -f "php-8.3/Dockerfile" .

echo "Build done!"

exit 0
