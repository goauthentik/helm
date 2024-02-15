#!/usr/bin/env bash
# Reference: https://github.com/helm/chart-testing
set -eux

SRCROOT="$(cd "$(dirname "$0")/.." && pwd)"

echo -e "\n-- Linting all Helm Charts --\n"
docker run \
    --rm \
    -v "$SRCROOT:/workdir" \
    --entrypoint /bin/sh \
    quay.io/helmpack/chart-testing:v3.10.1 \
    -c cd /workdir \
    ct lint \
    --config .github/configs/ct-lint.yaml \
    --lint-conf .github/configs/lintconf.yaml \
    --debug
