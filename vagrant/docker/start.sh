#!/bin/sh
set -eu

cd "$(dirname "$0")"

# Ensure the shared network exists before starting any service.
docker network inspect datalab >/dev/null 2>&1 || docker network create datalab --driver bridge

# For ARM hosts only, register binfmt support for cross-architecture containers.
case "$(uname -m)" in
  arm64|aarch64)
    docker run --privileged --rm tonistiigi/binfmt --install all
    ;;
esac
