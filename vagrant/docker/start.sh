#!/bin/sh
set -eu

cd "$(dirname "$0")"

case "$(uname -m)" in
  arm64|aarch64)
    docker compose --profile arm64 run --rm qemu-binfmt
    ;;
esac
docker compose --profile jupyterlab up -d 
docker compose up -d
