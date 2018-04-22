#!/bin/bash
test ! -d '/etc/nginx' || rm -Rf '/etc/nginx'
test ! -f '/usr/sbin/nginx' || rm -Rf '/usr/sbin/nginx'
test ! -d '/var/log/nginx' || rm -Rf '/var/log/nginx'
test ! -d '/usr/lib/nginx' || rm -Rf '/usr/lib/nginx'
