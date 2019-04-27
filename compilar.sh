#!/bin/bash
yum groupinstall "Development tools" -y
# Estava no slide
yum install libpcap-devel libmaxminddb-devel libsqlite3x-devel mariadb-devel rrdtool-devel redis -y
# Esta no docs
yum install git autoconf automake autogen bison flex libpcap-devel libmaxminddb-devel hiredis-devel redis glib2-devel libxml2-devel sqlite-devel gcc-c++ libtool wget libcurl-devel pango-devel cairo-devel libpng-devel mysql-devel libnetfilter_queue-devel zlib-devel which libcap-devel readline-devel
#
cd /root
git clone https://github.com/ntop/nDPI.git
cd /root/nDPI/
./autogen.sh
./configure
make && make install
cd /root
git clone https://github.com/ntop/ntopng.git
cd  /root/ntopng
./autogen.sh
./configure
make && make install
