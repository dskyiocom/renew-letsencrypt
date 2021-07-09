#!/bin/sh

[ "$AGREE_TOS" = true ] || exit 1

certbot renew --agree-tos -n --standalone

[[ -n "$NGINX_CONTAINER" ]] && docker kill -s HUP "$NGINX_CONTAINER"
