#!/bin/sh

source ./variables

echo "###############################"
echo "!!! MUST RUN WITH SUDO/ROOT !!!"
echo "###############################"

podman kill $SQUID_CONTAINER; podman rm $SQUID_CONTAINER