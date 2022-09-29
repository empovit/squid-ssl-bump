# Container Image with Squid Proxy as SSL Bump (MITM Proxy)

Based on [Configuring SSL Bumping in the Squid service](https://support.kaspersky.com/KWTS/6.1/en-US/166244.htm),
with a change because of [Bug 1397644 - ssl_crtd not included with squid](https://bugzilla.redhat.com/show_bug.cgi?id=1397644).

Requires `podman`.

> WARNING: The container must be run as a sudo or root user.

1. Pull or build (`sudo ./build.sh`) the image.
2. Generate a CA certificate and key `./certs.sh`.
3. Start a container `sudo ./run.sh`.

Alternatively, use https://github.com/authsec/squid (the [container image](https://hub.docker.com/r/authsec/squid)).