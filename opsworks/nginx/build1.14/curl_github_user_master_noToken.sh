#!/bin/bash
#TOKEN="INSERTACCESSTOKENHERE"
OWNER="sergko"
REPO="srv_nix_conf"
#REF="opsworks_nginx_jenkins"
#PATHgit="srv_nix_conf/opsworks/nginx/build1.14/nginx_initd"
PATHgit="usrv_samba/partitions_print_short.sh"
#FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit?ref=$REF"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit"


#curl --header 'Authorization: token $TOKEN' \
curl     --header 'Accept: application/vnd.github.v3.raw' \
     --remote-name \
--location $FILE \
-v -u kovbyk@gmail.com #:Vol@nd666