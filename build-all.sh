#!/bin/bash

main() {

    find images -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | xargs -tI{} ./build.sh {}

}

main "$@"
