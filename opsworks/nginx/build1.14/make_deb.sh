#!/bin/bash
#create deb
make
#instead of make install
checkinstall \
--install=no \
--maintainer=sergey.kovbyk@gmail.com \
--pkgname=nginx_opswork \
--pkgrelease=0.2 \
-y