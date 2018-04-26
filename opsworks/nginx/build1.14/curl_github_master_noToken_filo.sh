#!/bin/bash
#TOKEN="INSERTACCESSTOKENHERE"
OWNER="sergko"
REPO="srv_nix_conf"
REF="opsworks_nginx_jenkins"
PATHgit="opsworks/nginx/build1.14"
FILEO="nginx_initd"
#PATHgit="usrv_samba/partitions_print_short.sh"
FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit/$FILEO?ref=$REF"
#FILE="https://api.github.com/repos/$OWNER/$REPO/contents/$PATHgit"

#curl --header 'Authorization: token $TOKEN' \
curl -v --header 'Accept: application/vnd.github.v3.raw' \
        -o $FILEO \
        --location $FILE \
#-v #-u kovbyk@gmail.com #:Vol@nd666
#     --remote-name \

chmod 0755 $FILEO