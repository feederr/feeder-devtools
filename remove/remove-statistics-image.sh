#!/bin/bash

docker rmi $(docker images | grep 'feederr/statistics' | awk '{print $3}')
