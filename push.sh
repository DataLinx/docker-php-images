#!/usr/bin/env bash

echo "Pushing images to Docker Hub..."

docker push slimdeluxe/php:7.4
docker push slimdeluxe/php:8.1
docker push slimdeluxe/php:8.2

echo "Push done!"

exit 0
