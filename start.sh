#!/usr/bin/env sh
set -eu

# Render'ın istediği bind
export SERVER__HOST=0.0.0.0
export SERVER__PORT="${PORT:-8000}"

echo "[start.sh] binding ${SERVER__HOST}:${SERVER__PORT}"
# Bayraksız: sürüm farkı riskini sıfırla
exec ccproxy
