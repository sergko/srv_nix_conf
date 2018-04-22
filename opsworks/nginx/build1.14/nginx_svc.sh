#!/bin/bash
#nginx service create
test ! -f '/etc/init.d/nginx' || cp ./nginx_initd /etc/init.d && mv /etc/init.d/nginx_initd /etc/init.d/nginx
update-rc.d -f nginx defaults
test ! -d '/var/log/nginx' || mkdir -p '/var/log/nginx'