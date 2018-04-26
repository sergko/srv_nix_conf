#!/bin/bash
OWNER="sergko"
REPO="srv_nix_conf"
REF="opsworks_nginx_jenkins"
PATHgit="opsworks/nginx/build1.14"
FILEO="nginx_initd"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"
curl -v --header 'Accept: application/vnd.github.v3.raw' \
        -o $FILEO \
        --location $FILE
chmod 0755 $FILEO