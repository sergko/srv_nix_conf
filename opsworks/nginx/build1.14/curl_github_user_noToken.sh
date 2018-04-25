#!/bin/bash
#TOKEN="INSERTACCESSTOKENHERE"
OWNER="sergko"
REPO="srv_nix_conf"
REF="opsworks_nginx_jenkins"
PATHgit="opsworks/nginx/build1.14"
FILEO="nginx_initd"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"

#curl --header 'Authorization: token $TOKEN' \
curl     --header 'Accept: application/vnd.github.v3.raw' \
     --remote-name \
     --location $FILE \
     -O $FILEO \
-v -u kovbyk@gmail.com:Vol@nd666 #> t
#-v# -u kovbyk@gmail.com
#     -O --remote-name \

