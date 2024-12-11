#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
PLATFORM=${1:-"linux"}
ARCH=${2:-"amd64"}
DOCKER_VERSION="v27.1.2"
DOCKER_COMPOSE_VERSION="v2.29.2"
mkdir -p dist/

/usr/bin/env bash ./build/download_docker_binary.sh "$PLATFORM" "$ARCH" "$DOCKER_VERSION"
/usr/bin/env bash ./build/download_docker_compose_binary.sh "$PLATFORM" "$ARCH" "$DOCKER_COMPOSE_VERSION"


