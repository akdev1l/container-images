#!/bin/bash

set -xeu

main() {

    CONTAINER_REGISTRY="ghcr.io/akdev1l/container-images"

    image="${1}"
    (
        cd images
        podman build \
            -t "akdev1l/${image}:latest" \
            -t "akdev1l/${image}:$(date +%Y%m%d)" \
         "${image}"
    )

    #podman push "akdev1l/${image}:latest" "${CONTAINER_REGISTRY}/${image}:latest"
    #podman push "akdev1l/${image}:$(date +%Y%m%d)" "${CONTAINER_REGISTRY}/${image}:$(date +%Y%m%d)"
}

main "$@"
