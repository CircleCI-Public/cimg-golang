#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.23/Dockerfile -t cimg/go:1.23.1 -t cimg/go:1.23 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.23/node/Dockerfile -t cimg/go:1.23.1-node -t cimg/go:1.23-node --push .
docker buildx build --platform=linux/amd64 --file 1.23/browsers/Dockerfile -t cimg/go:1.23.1-browsers -t cimg/go:1.23-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.22/Dockerfile -t cimg/go:1.22.7 -t cimg/go:1.22 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 1.22/node/Dockerfile -t cimg/go:1.22.7-node -t cimg/go:1.22-node --push .
docker buildx build --platform=linux/amd64 --file 1.22/browsers/Dockerfile -t cimg/go:1.22.7-browsers -t cimg/go:1.22-browsers --push .
