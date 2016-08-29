#!/bin/sh

set -e

# TODO drop down uid/gid to sitepod 2000 
if [ "$1" = '/usr/sbin/nginx' ]; then
    mkdir -p /tmp/nginx
    chmod -R 777 /tmp/nginx
    exec "$@"
fi

exec "$@"
