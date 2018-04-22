#!/bin/bash
#test -d '/usr/lib/nginx/modules' || mkdir -p '/usr/lib/nginx/modules'
#--add-module=/usr/src/ngx_devel_kit-0.3.0 \
#--add-module=/usr/src/lua-nginx-module-0.10.12 \
# from ubuntu 18 distr
##--with-cc-opt='-g -O2 -fdebug-prefix-map=/build/nginx-mcUg8N/nginx-1.14.0=. -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
#--with-cc-opt='-g -O2 -fdebug-prefix-map=/usr/src/nginx-release-1.14.0/debug-pref=. -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
##--with-cc-opt='-g -O2 -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
#--with-ld-opt="-Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-z,now -fPIC" \
#--with-cc-opt='-g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2' \
#--with-ld-opt='-Wl,-z,relro -Wl,--as-needed' \

./configure \
--prefix=/etc/nginx                   \
--sbin-path=/usr/sbin/nginx           \
--conf-path=/etc/nginx/nginx.conf     \
--pid-path=/var/run/nginx.pid         \
--lock-path=/var/run/nginx.lock       \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--with-cc-opt='-g -O2 -fdebug-prefix-map=/build/nginx-mcUg8N/nginx-1.14.0=. -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
--with-cc-opt='-g -O2 -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
--modules-path=/usr/lib/nginx/modules \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
--http-proxy-temp-path=/var/lib/nginx/proxy \
--http-scgi-temp-path=/var/lib/nginx/scgi \
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
--with-debug \
--with-pcre-jit \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_realip_module \
--with-http_auth_request_module \
--with-http_v2_module \
--with-http_dav_module \
--with-http_slice_module \
--with-threads \
--with-http_addition_module \
--with-http_geoip_module=dynamic \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_image_filter_module=dynamic \
--with-http_sub_module \
--with-http_xslt_module=dynamic \
--with-stream=dynamic \
--with-stream_ssl_module \
--with-mail=dynamic \
--with-mail_ssl_module \
--add-module=/usr/src/ngx_devel_kit-0.3.0 \
--add-module=/usr/src/lua-nginx-module-0.10.12
