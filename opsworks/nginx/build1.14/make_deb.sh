#!/bin/bash
#create deb
make
#instead of make install
checkinstall \
--install=no \
--maintainer=sergey.kovbyk@gmail.com \
--pkgname=nginx-opswork \
--pkgrelease=0.4 \
-y