#!/bin/bash

echo $BUILD_NUMBER > $(PWD)/.auth
echo $PASS >> $(PWD)/.auth

scp $(PWD)/.auth saurabh6422@13.69.148.248:/tmp/.auth
scp ./pipeline/deploy1.sh saurabh6422@13.69.148.248:/tmp/target.sh
ssh saurabh6422@13.69.148.248 "/tmp/target.sh"
