#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 1.18/Dockerfile -t cimg/go:1.18.10 -t cimg/go:1.18 .
docker build --file 1.18/node/Dockerfile -t cimg/go:1.18.10-node -t cimg/go:1.18-node .
docker build --file 1.18/browsers/Dockerfile -t cimg/go:1.18.10-browsers -t cimg/go:1.18-browsers .
docker build --file 1.19/Dockerfile -t cimg/go:1.19.5 -t cimg/go:1.19 .
docker build --file 1.19/node/Dockerfile -t cimg/go:1.19.5-node -t cimg/go:1.19-node .
docker build --file 1.19/browsers/Dockerfile -t cimg/go:1.19.5-browsers -t cimg/go:1.19-browsers .
