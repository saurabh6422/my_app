#!/bin/bash
echo "***************************"
echo "************Publish Image********"
echo "*****************************"

docker login -u priyadarshi6422 -p $PASS
docker image tag my_app:$BUILD_NO priyadarshi6422/my_app:$BUILD_NO
docker push priyadarshi6422/my_app:$BUILD_NO

