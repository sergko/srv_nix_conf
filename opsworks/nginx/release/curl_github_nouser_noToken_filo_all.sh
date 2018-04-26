#!/bin/bash
# for test this script should be run from root folder for building deb packege near ./configure
#!/bin/bash
#customize before build deb
#added /etc/init.d/nginx - searching solution for adding to package .deb
#added /etc/nginx/nginx.conf
#added /etc/nginx/html/index.html
#_orig means file from original package


OWNER="sergko"
REPO="srv_nix_conf"
REF="opsworks_nginx_jenkins"

#/etc/nginx/html/index.html
PATHgit="opsworks/nginx/release/html"
FILEO="index.html"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"
curl -v --header 'Accept: application/vnd.github.v3.raw' \
        -o $FILEO \
        --location $FILE
chmod 0644 $FILEO
mv ./docs/html/index.html ./docs/html/index.html_orig
mv index.html ./docs/html/index.html

#//etc/nginx/nginx.conf
PATHgit="opsworks/nginx/release"
FILEO="nginx.conf"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"
curl -v --header 'Accept: application/vnd.github.v3.raw' \
        -o $FILEO \
        --location $FILE
chmod 0644 $FILEO
mv ./conf/nginx.conf ./conf/nginx.conf_oring
mv nginx.conf ./conf/nginx.conf

#/etc/init.d/nginx
PATHgit="opsworks/nginx/release"
FILEO="nginx"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"
curl -v --header 'Accept: application/vnd.github.v3.raw' \
        -o $FILEO \
        --location $FILE
chmod 0755 $FILEO


