#!/bin/bash
#nginx service create
test -f '/etc/init.d/nginx' || cp ./nginx_initd /etc/init.d && mv /etc/init.d/nginx_initd /etc/init.d/nginx
test ! -f '/etc/init.d/nginx_initd' || mv /etc/init.d/nginx_initd /etc/init.d/nginx
update-rc.d -f nginx defaults
#fix folders
test -d '/var/log/nginx' || mkdir -p '/var/log/nginx'
test -d '/var/lib/nginx/client_temp' || mkdir -p '/var/lib/nginx/client_temp'
test -d '/var/lib/nginx/proxy_temp' || mkdir -p '/var/lib/nginx/proxy_temp'
test -d '/var/lib/nginx/fastcgi_temp ' || mkdir -p '/var/lib/nginx/fastcgi_temp '
test -d '/var/lib/nginx/uwsgi_temp' || mkdir -p '/var/lib/nginx/uwsgi_temp'
test -d '/var/lib/nginx/scgi_temp' || mkdir -p '/var/lib/nginx/scgi_temp'
#init my own index.html
sed -i -e 's/Welcome to nginx!/Welcome to nginx!  Thnx Sergey Kovbyk! etc_nginx_html_index.html/g' /etc/nginx/html/index.html 
# replace - update a file
