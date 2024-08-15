#!/bin/bash

ssh saurabh6422@13.69.148.248
PASS=$(sed -n 2p /tmp/.auth)
BUILD_NO=$(sed -n 1p /tmp/.auth)

docker login -u priyadarshi6422 -p $PASS
docker image pull priyadarshi6422/my_app:$BUILD_NO

