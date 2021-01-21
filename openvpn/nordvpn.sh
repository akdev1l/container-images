#!/bin/bash

NORD_VPN_CONFIG=https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip

TMP_CONFIG_DIR="$(mktemp -d)"
curl "${NORD_VPN_CONFIG}" -Lo "${TMP_CONFIG_DIR}/ovpn.zip"
unzip -d "${TMP_CONFIG_DIR}" "${TMP_CONFIG_DIR}/ovpn.zip"

mkdir -p "/tmp/ovpn"
find "${TMP_CONFIG_DIR}" -name '*.ovpn' -print0 | xargs -P4 -t --null -I@ mv @ "/tmp/ovpn"

rm -rf "${TMP_CONFIG_DIR}"


