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

```console
docker run -e ACCEPT_TOS=true -v "$PWD/certs:/etc/letsencrypt" -v /var/run/docker.sock:/var/run/docker.sock dskyiocom/renew-letsencrypt
```
