#!/bin/bash

docker rmi $(docker images | grep 'feederr/application' | awk '{print $3}')
