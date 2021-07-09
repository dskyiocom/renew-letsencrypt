[![Build Status](https://travis-ci.com/dskyiocom/renew-letsencrypt.svg?branch=main)](https://travis-ci.com/dskyiocom/renew-letsencrypt)

# Summary

Renews mounted Let's Encrypt certificates.

Complements https://hub.docker.com/r/dskyiocom/nginx-alpine-letsencrypt

# Source code

https://github.com/dskyiocom/renew-letsencrypt

# Tags

- `latest`

# How to use this image

You need to agree to the ACME server's Subscriber Agreement by setting `ACCEPT_TOS` to `true`.

Setting `NGINX_CONTAINER` triggers `docker kill -s HUP "$NGINX_CONTAINER"`.

By default renewals are attempted at container start and every 10 days. To adjust the interval `INTERVAL` can be set.

```console
docker run -e ACCEPT_TOS=true -v "$PWD/certs:/etc/letsencrypt" -v /var/run/docker.sock:/var/run/docker.sock dskyiocom/renew-letsencrypt
```
