#!/bin/sh

COMPOSE_PATH="../compose"

docker-compose \
-f $COMPOSE_PATH/docker-compose.yml \
-f $COMPOSE_PATH/docker-compose.infra.yml \
-f $COMPOSE_PATH/docker-compose.services.yml \
up -d --force-recreate
