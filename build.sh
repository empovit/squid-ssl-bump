#!/bin/sh

source ./config.sh

podman build -t $SQUID_IMAGE -f Containerfile ./container