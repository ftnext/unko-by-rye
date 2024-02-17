#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname $0)"; pwd -P)"
REPO_ROOT_DIR="${SCRIPT_DIR}/.."

docker build -f "${REPO_ROOT_DIR}/docker/Dockerfile" -t unko-by-rye:example "${REPO_ROOT_DIR}"
