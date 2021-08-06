#!/usr/bin/env sh

RCLONE_CONF=/config/rclone/rclone.conf

if [ ! -f "$RCLONE_CONF" ]; then
    echo "$RCLONE_CONFIG_SEED" | base64 -d >"$RCLONE_CONF"
fi

exec nice rclone \
    -n 10 rclone \
    serve sftp \
    --addr :2022 \
    --vfs-cache-mode writes \
    "$RCLONE_SOURCE"
