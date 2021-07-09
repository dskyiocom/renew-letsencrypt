#!/bin/sh

[ "$AGREE_TOS" = true ] || exit 1

while :; do
  certbot renew --agree-tos -n --standalone

  [ -n "$NGINX_CONTAINER" ] && docker kill -s HUP "$NGINX_CONTAINER"

  [ -z "$INTERVAL" ] && INTERVAL=864000
  sleep "$INTERVAL"
done
