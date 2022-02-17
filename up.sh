#!/usr/bin/env bash

set -e

git pull
./compose up -d cloudflare_ssh || true
./compose up --remove-orphans -d
