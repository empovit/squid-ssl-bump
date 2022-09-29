#!/bin/sh

source ./variables

echo "###############################"
echo "!!! MUST RUN WITH SUDO/ROOT !!!"
echo "###############################"

podman run -d \
    --name $SQUID_CONTAINER \
    --privileged \
    -p $SQUID_PORT:3128 \
    -v $SQUID_CERT_DIR/bump.key:/etc/squid/bump.key \
    -v $SQUID_CERT_DIR/bump.crt:/etc/squid/bump.crt \
    -v $SQUID_CERT_DIR/bump_dhparam.pem:/etc/squid/bump_dhparam.pem \
    $SQUID_IMAGE

echo "Use CA certificate at ${SQUID_CERT_DIR}/bump.crt"