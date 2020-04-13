#!/bin/sh
docker-compose \
-f docker-compose.infra.yml \
down -v
