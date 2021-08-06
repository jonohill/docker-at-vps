#!/usr/bin/env sh

RCLONE_CONF=/config/rclone/rclone.conf

if [ ! -f "$RCLONE_CONF" ]; then
    echo "$RCLONE_CONFIG_SEED" | base64 -d >"$RCLONE_CONF"
fi

exec nice -n 10 \
    rclone \
    serve sftp \
    --no-auth \
    --addr :2022 \
    --vfs-cache-mode writes \
    "$RCLONE_SOURCE"
