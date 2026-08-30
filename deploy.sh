#!/bin/sh
set -eu

IMAGE="ghcr.io/csiglab/arbitriologia:latest"
CONTAINER="arbitriologia"
PORT="${ARBITRIOLOGIA_PORT:-8080}"

cd "$(dirname "$0")"

# Local defaults from .env (e.g. ARBITRIOLOGIA_PORT); real env vars still win.
if [ -f .env ]; then
  while IFS='=' read -r key value; do
    case $key in
      ''|\#*) continue ;;
    esac
    if [ -z "$(eval "printf '%s' \"\${$key:-}\"")" ]; then
      eval "$key=\$value"
    fi
  done < .env
fi

docker pull "$IMAGE"
docker rm -f "$CONTAINER" 2>/dev/null || true
exec docker run -d --name "$CONTAINER" --restart unless-stopped \
  -p "$PORT:80" \
  "$IMAGE"
