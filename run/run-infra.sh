#!/bin/sh

COMPOSE_PATH="../compose"

docker-compose \
-f $COMPOSE_PATH/docker-compose.yml \
up -d --force-recreate
