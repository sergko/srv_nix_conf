#!/bin/bash
#create a conf file

echo './configure \' > conf.sh
echo '--prefix=/etc/nginx                   \' >> conf.sh
echo '--sbin-path=/usr/sbin/nginx           \' >> conf.sh
#echo '--conf-prefix=/etc/nginx/             \' >> conf.sh
echo '--conf-path=/etc/nginx/nginx.conf     \' >> conf.sh
echo '--pid-path=/var/run/nginx.pid         \' >> conf.sh
echo '--lock-path=/var/run/nginx.lock       \' >> conf.sh
echo '--error-log-path=/var/log/nginx/error.log \' >> conf.sh
echo '--http-log-path=/var/log/nginx/access.log \' >> conf.sh
echo '--add-module=/usr/src/ngx_devel_kit-0.3.0 \' >> conf.sh
echo '--add-module=/usr/src/lua-nginx-module-0.10.12' >> conf.sh

chmod u+x ./conf.sh