#!/bin/bash

show_spinner()
{
  local -r pid="${1}"
  local -r delay='0.5'
  local spinstr='\|/-'
  local temp
  while ps a | awk '{print $1}' | grep -q "${pid}"; do
    temp="${spinstr#?}"
    printf " [%c]  " "${spinstr}"
    spinstr=${temp}${spinstr%"${temp}"}
    sleep "${delay}"
    printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

PROJECT_DIR="../"

SERVICES=( "application" "authorization" "statistics")

counter=0
for s in ${SERVICES[@]}; do
    ((counter++))
    echo " ____            _   _       _ "
    echo "| __ )   _   _  (_) | |   __| |"
    echo "|  _ \  | | | | | | | |  / _' |"
    echo "| |_) | | |_| | | | | | | (_| |"
 echo -n "|____/   \__,_| |_| |_|  \__,_| : $d | #$counter/${#SERVICES[@]} |"
    ( cd "$PROJECT_DIR$s" && ./mvnw clean package -e -DskipTests && docker build -t "truesolo/feeder-"$s . "${@}" > /dev/null & show_spinner "$!")
    echo " done."
done
