#!/bin/bash
#create deb
make
#instead of make install
#-y
checkinstall -D -y \
--install=no \
--maintainer=sergey.kovbyk@gmail.com \
--pkgname=nginx-opswork \
--pkgrelease=0.6 \
