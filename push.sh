#!/usr/bin/env bash

echo "Pushing images to Docker Hub..."

docker push slimdeluxe/php:7.4-v1.1
docker push slimdeluxe/php:8.1-v1.1
docker push slimdeluxe/php:8.2-v1.1
docker push slimdeluxe/php:8.3-v1.1

echo "Push done!"

exit 0
