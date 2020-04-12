#!/bin/sh
docker-compose \
-f docker-compose.infra.yml \
-f docker-compose.services.yml \
up -d --force-recreate
