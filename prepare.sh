#!/bin/bash
source vars

yum groupinstall -y 'Development Tools'
yum install -y epel-release
yum install -y perl perl-devel perl-ExtUtils-Embed libxslt libxslt-devel libxml2 libxml2-devel gd gd-devel GeoIP GeoIP-devel openldap-devel wget vim git

# nginx 
wget https://nginx.org/download/nginx-$NGINX_VER.tar.gz && tar xzvf nginx-$NGINX_VER.tar.gz
# PCRE
wget https://ftp.pcre.org/pub/pcre/pcre-$PCRE_VER.tar.gz && tar xzvf pcre-$PCRE_VER.tar.gz
# zlib
wget https://www.zlib.net/zlib-$ZLIB_VER.tar.gz && tar xzvf zlib-$ZLIB_VER.tar.gz
# OpenSSL
wget https://www.openssl.org/source/openssl-$OPENSSL_VER.tar.gz && tar xzvf openssl-$OPENSSL_VER.tar.gz

echo "READY! Run install.sh to compile and install nginx!"

