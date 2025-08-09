#!/usr/bin/env sh
set -eu

echo "[start.sh] PORT=${PORT:-unset} SERVER__HOST=${SERVER__HOST:-unset} SERVER__PORT=${SERVER__PORT:-unset}"

# Render web servisleri 0.0.0.0 ve $PORT'a bind istemek zorunda.  :contentReference[oaicite:2]{index=2}
export SERVER__HOST=0.0.0.0
export SERVER__PORT="${SERVER__PORT:-${PORT:-8000}}"

# Versiyon bilgisi/log için küçük bir çıktı (opsiyonel)
ccproxy --help >/dev/null 2>&1 || true

# Bayraksız başlat: host/port'u ENV'den alacak
exec ccproxy --sdk-enable-pool
