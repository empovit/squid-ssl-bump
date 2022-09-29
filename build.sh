#!/bin/sh

source ./variables

podman build -t $SQUID_IMAGE -f Containerfile ./container