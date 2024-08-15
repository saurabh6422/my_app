#!/bin/bash

echo "********************************"
echo "************Build***************"
echo "********************************"

docker run --rm -v ${PWD}:/app -v /root/.m2:/root/.m2 -w /app maven $@
cp ./target/*.jar ./pipeline/
cd pipeline/
docker compose build app
