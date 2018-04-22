#!/bin/bash
#create a conf file

# ---- nostly from Ubuntu u18.04 -------starting echo "--with-cc-opt= and without several NOT installed plugins/libs
#echo '--with-http_geoip_module=dynamic \' >> conf.sh
#echo '--with-http_image_filter_module=dynamic \' >> conf.sh
#echo '--with-http_xslt_module=dynamic \' >> conf.sh
echo './configure \' > conf.sh
echo '--prefix=/etc/nginx                   \' >> conf.sh
echo '--sbin-path=/usr/sbin/nginx           \' >> conf.sh
echo '--conf-path=/etc/nginx/nginx.conf     \' >> conf.sh
echo '--pid-path=/var/run/nginx.pid         \' >> conf.sh
echo '--lock-path=/var/run/nginx.lock       \' >> conf.sh
echo '--error-log-path=/var/log/nginx/error.log \' >> conf.sh
echo '--http-log-path=/var/log/nginx/access.log \' >> conf.sh
echo '--http-client-body-temp-path=/var/lib/nginx/client_temp \' >> conf.sh
echo '--http-proxy-temp-path=/var/lib/nginx/proxy_temp \' >> conf.sh
echo '--http-fastcgi-temp-path=/var/lib/nginx/fastcgi_temp \' >> conf.sh
echo '--http-uwsgi-temp-path=/var/lib/nginx/uwsgi_temp \' >> conf.sh
echo '--http-scgi-temp-path=/var/lib/nginx/scgi_temp \' >> conf.sh
echo '--user=www-data \' >> conf.sh
echo '--group=www-data \' >> conf.shecho  '--add-module=/usr/src/ngx_devel_kit-0.3.0 \' >> conf.sh
echo  '--add-module=/usr/src/lua-nginx-module-0.10.12 \' >> conf.sh
echo "--with-cc-opt='-g -O2 -fdebug-prefix-map=/build/nginx-mcUg8N/nginx-1.14.0=. -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \\" >> conf.sh
echo "--with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-z,now -fPIC' \\" >> conf.sh
echo '--modules-path=/usr/lib/nginx/modules \' >> conf.sh
echo '--http-client-body-temp-path=/var/lib/nginx/body \' >> conf.sh
echo '--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \' >> conf.sh
echo '--http-proxy-temp-path=/var/lib/nginx/proxy \' >> conf.sh
echo '--http-scgi-temp-path=/var/lib/nginx/scgi \' >> conf.sh
echo '--http-uwsgi-temp-path=/var/lib/nginx/uwsgi \' >> conf.sh
echo '--with-debug \' >> conf.sh
echo '--with-pcre-jit \' >> conf.sh
echo '--with-http_ssl_module \' >> conf.sh
echo '--with-http_stub_status_module \' >> conf.sh
echo '--with-http_realip_module \' >> conf.sh
echo '--with-http_auth_request_module \' >> conf.sh
echo '--with-http_v2_module \' >> conf.sh
echo '--with-http_dav_module \' >> conf.sh
echo '--with-http_slice_module \' >> conf.sh
echo '--with-threads \' >> conf.sh
echo '--with-http_addition_module \' >> conf.sh
echo '--with-http_gunzip_module \' >> conf.sh
echo '--with-http_gzip_static_module \' >> conf.sh
echo '--with-http_sub_module \' >> conf.sh
echo '--with-stream=dynamic \' >> conf.sh
echo '--with-stream_ssl_module \' >> conf.sh
echo '--with-mail=dynamic \' >> conf.sh
echo '--with-mail_ssl_module \' >> conf.sh



chmod u+x ./conf.sh