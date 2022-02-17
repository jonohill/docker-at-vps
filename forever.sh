#!/usr/bin/env bash

set -e

while true; do
    sleep 30    
    ./compose up --remove-orphans -d
done
