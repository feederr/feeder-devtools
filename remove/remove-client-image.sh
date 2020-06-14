#!/bin/bash

docker rmi $(docker images | grep 'feederr/client' | awk '{print $3}')
