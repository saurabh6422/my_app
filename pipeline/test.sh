#!/bin/bash
echo "********************"
echo "*******TEST*********"
echo "********************"

docker run --rm -v ${PWD}:/app -v /root/.m2:/root/.m2 -w /app maven $@
