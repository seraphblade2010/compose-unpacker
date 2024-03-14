#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
PLATFORM=${1:-"linux"}
ARCH=${2:-"amd64"}
DOCKER_VERSION="v24.0.7"
DOCKER_COMPOSE_VERSION="v2.23.3"
SOPS_VERSION="v3.8.1"
mkdir -p dist/

/usr/bin/env bash ./build/download_docker_binary.sh "$PLATFORM" "$ARCH" "$DOCKER_VERSION"
/usr/bin/env bash ./build/download_docker_compose_binary.sh "$PLATFORM" "$ARCH" "$DOCKER_COMPOSE_VERSION"
/usr/bin/env bash ./build/download_sops_binary.sh "$PLATFORM" "$ARCH" "$SOPS_VERSION"
