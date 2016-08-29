#!/bin/sh

set -e

# TODO drop down uid/gid to sitepod 2000 
if [ "$1" = '/usr/sbin/nginx' ]; then
    exec "$@"
fi

exec "$@"
