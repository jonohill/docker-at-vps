#!/usr/bin/env bash

set -e

# HACK delete known_hosts so it doesn't complain if the rclone container's recreated
# It's local anyway
rm /config/known_hosts || true
