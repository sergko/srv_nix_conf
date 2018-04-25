#!/bin/bash
#TOKEN="INSERTACCESSTOKENHERE"
OWNER="sergko"
REPO="srv_nix_conf"
REF="opsworks_nginx_jenkins"
PATHgit="opsworks/nginx/build1.14"
FILEO="nginx_initd"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"

curl -v --header 'Accept: application/vnd.github.v3.raw' \
     --remote-name \
     --location $FILE \
#     -O "yyy.sh" \
#     --output "yyy.sh" \
#     --libcurl "list" \
#-u kovbyk@gmail.com #:Vol@nd666
