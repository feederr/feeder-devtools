#!/bin/bash

docker rmi $(docker images | grep 'feederr/authorization' | awk '{print $3}')
