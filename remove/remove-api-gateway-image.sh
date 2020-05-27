#!/bin/bash

docker rmi $(docker images | grep 'feederr/api-gateway' | awk '{print $3}')
