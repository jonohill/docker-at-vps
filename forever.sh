#!/usr/bin/env bash

set -e


up() {
    ./compose up --remove-orphans -d
}


while true; do
    sleep 30    
    if ! up; then
        docker system prune --force
        up
    fi
done
