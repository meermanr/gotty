#!/bin/bash -e
docker build . -t golang-gotty
docker run \
    --rm \
    -it \
    --network host \
    --user $(id -u):$(id -g) \
    --volume "$PWD:/go/src/github.com/yudai/gotty/" \
    --workdir /go/src/github.com/yudai/gotty \
    golang-gotty:latest \
    make "${@}"
