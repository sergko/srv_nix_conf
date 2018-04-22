#!/bin/bash
##create deb
#make
##instead of make install
#checkinstall \
#--install=no \
#--maintainer=sergey.kovbyk@gmail.com \
#--pkgname=nginx-opswork \
#--pkgrelease=0.5 \
#-y


#-us -uc -b 
dpkg-buildpackage \
-m serkey.kovbyk@gmail.com \

