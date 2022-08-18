#!/bin/bash

curl -LJ "${ETHMINER_RELEASE_URL}" -o /tmp/ethminer.tar.gz

(
    cd /opt
    tar xvf /tmp/ethminer.tar.gz
)
