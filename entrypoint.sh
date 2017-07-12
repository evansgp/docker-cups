#!/usr/bin/env sh

/usr/sbin/cupsd -c cupsd.conf && tail -F /var/log/cups/access_log /var/log/cups/error_log
