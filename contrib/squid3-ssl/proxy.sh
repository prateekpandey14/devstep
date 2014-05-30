#!/bin/bash

set -e

if ! [ -z "${HTTPS_PROXY_CERT}" ]; then
  sudo cp $HTTPS_PROXY_CERT /usr/share/ca-certificates
  sudo sh -c "echo '$(basename ${HTTPS_PROXY_CERT})' >> /etc/ca-certificates.conf"
  sudo /usr/sbin/update-ca-certificates
fi
