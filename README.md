# Container Image with Squid Proxy as SSL Bump (MITM Proxy)

> **WARNING**: This image is only for testing or developement, don't use in production.


The configuration is based on [Configuring SSL Bumping in the Squid service](https://support.kaspersky.com/KWTS/6.1/en-US/166244.htm) with a modification because of [Bug 1397644 - ssl_crtd not included with squid](https://bugzilla.redhat.com/show_bug.cgi?id=1397644).

The scripts require `podman` to run.

> **NOTE:** The container must be run with sudo or as a root user.

How to build/run:

1. _(Optionally)_ build the image. If not built locally, it will be pulled from the registry:

    ```sh
    sudo ./build.sh
    ```

2. Generate CA key and certificate, and a settings file for the Diffie-Hellman algorithm:

    ```sh
    ./certs.sh
    ```

3. Start a Squid container:

    ```sh
    sudo ./run.sh
    ```

Alternatively, use https://github.com/authsec/squid (and the [container image](https://hub.docker.com/r/authsec/squid)).