#!/bin/bash

docker rmi $(docker images | grep 'feederr' | awk '{print $3}')
