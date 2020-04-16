#!/bin/bash

PROJECT_DIR="../"

SERVICES=("application" "authorization" "statistics" "api-gateway")

for SERVICE in "${SERVICES[@]}"; do
  DIR_PATH=$PROJECT_DIR$SERVICE
  cd "$DIR_PATH" && ./mvnw clean package -e -DskipTests && docker build -t "feederr/$SERVICE" .
done
