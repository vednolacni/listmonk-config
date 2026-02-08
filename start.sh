#!/bin/sh
set -e

PORT="${PORT:-9000}"

# zamenjaj address port v configu
sed -i "s/address = \".*\"/address = \"0.0.0.0:${PORT}\"/g" /listmonk/config.toml

exec ./listmonk --config /listmonk/config.toml
