#!/bin/bash
set -e

# Render sets PORT. Apache's default is 80.
PORT="${PORT:-80}"

# Change Apache's listening port if needed.
sed -i "s/^Listen 80$/Listen ${PORT}/" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \\*:80>/<VirtualHost *:${PORT}>/" /etc/apache2/sites-available/000-default.conf

exec /usr/local/bin/docker-entrypoint.sh "$@"
