#!/bin/sh

source ./variables

mkdir -p $SQUID_CERT_DIR

openssl req -x509 -nodes -subj "/O=Squid Root CA/CN=Test" -days 365 \
    -newkey rsa:4096 -keyout "$SQUID_CERT_DIR/bump.key" \
    -outform PEM -out "$SQUID_CERT_DIR/bump.crt"

openssl dhparam -outform PEM -out "$SQUID_CERT_DIR/bump_dhparam.pem" 2048