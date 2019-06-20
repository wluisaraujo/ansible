#!/bin/bash

# Numero da Maquina do Aluno
X=99

# Teste de Preenchimento da Variavel X
test ! -z $X || exit

# Variaveis
AZUL="\033[1;34m"
END="\033[m"

apt-get remove samba*

cd /tmp
wget 192.168.1.1/452/samba/archives.tar.gz
tar xf /tmp/archives.tar.gz
mv /tmp/archives/*.deb /var/cache/apt/archives

apt-get install rpl bind9 ntp libpython2.6 krb5-user libdm0 acl cups

echo "domain dexter.com.br" > /etc/resolv.conf
echo "nameserver 192.168.$X.5" >> /etc/resolv.conf

wget 192.168.1.1/452/samba/sernet-samba4_4.0.0-1_i386.deb

dpkg -i sernet-samba4_4.0.0-1_i386.deb

echo "PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/samba/bin:/opt/samba/sbin'" >> /root/.bashrc

source /root/.bashrc

samba-tool domain provision --domain=DEXTER --realm=DEXTER.COM.BR --server-role=dc --adminpass=4LinuxSamba --dns-backend=BIND9_DLZ --use-rfc2307

echo 'include "/opt/samba/private/named.conf";' >> /etc/bind/named.conf

cd

rm -rf /etc/bind/named.conf.options

wget 192.168.1.1/452/samba/named.conf.options -O /etc/bind/named.conf.options

rpl X $X /etc/bind/named.conf.options

wget 192.168.1.1/452/samba/dexter.com.br.zone -O /var/cache/bind/dexter.com.br.zone

wget 192.168.1.1/452/samba/99.168.192.in-addr.arpa -O /var/cache/bind/$X.168.192.in-addr.arpa

rpl XX $X /var/cache/bind/dexter.com.br.zone

rm -rf /etc/bind/named.conf.local

wget 192.168.1.1/452/samba/named.conf.local -O /etc/bind/named.conf.local

rpl X $X /etc/bind/named.conf.local

rm -rf /opt/samba/etc/smb.conf

rpl XX $X /opt/samba/etc/smb.conf

wget 192.168.1.1/452/samba/smb.conf -O /opt/samba/etc/smb.conf

chown bind: /opt/samba/private/named.conf 
chown bind: /opt/samba/private/dns.keytab

cp /opt/samba/private/krb5.conf /etc/

rm -rf /etc/ntp.conf

wget 192.168.1.1/452/samba/ntp.conf -O /etc/ntp.conf

service ntp restart

service bind9 restart

service sernet-samba4 restart
