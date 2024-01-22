#!/usr/bin/env bash

if [ ! -e /etc/shells ] && [ -e /var/run/host/etc/shells ]; then
  ln -s /var/run/host/etc/shells /etc/shells
fi

exec zypak-wrapper /app/extra/azuredatastudio "$@"
