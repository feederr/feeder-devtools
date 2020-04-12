#!/bin/sh
docker-compose \
-f docker-compose.infra.yaml \
up -d --force-recreate
