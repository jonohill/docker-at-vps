#!/usr/bin/env bash

set -e

git pull
./compose up -d tailscale || true
./compose up --remove-orphans -d
