#!/bin/bash

cat > "${OPENVPN_PASSWD_FILE}" <<EOF
${OPENVPN_USER}
${OPENVPN_PASS}
EOF

exec openvpn --config "${OPENVPN_CONFIG_DIR}/${OPENVPN_PROFILE}.ovpn" \
             --auth-user-pass "${OPENVPN_PASSWD_FILE}"
