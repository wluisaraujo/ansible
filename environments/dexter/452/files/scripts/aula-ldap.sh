#!/bin/bash
# Script para Configurar o LDAP 
# desinstalando o ldap
apt-get purge slapd ldap-utils 

# Removendo a base ldap
rm -rf /var/lib/ldap/*

# Instala o LDAP 
apt-get install slapd ldap-utils 

# Reconfigura o LDAP 
dpkg-reconfigure slapd

# Configura os arquivos
echo 'BASE    dc=dexter,dc=com,dc=br' > /etc/ldap/ldap.conf
echo 'URI     ldap://127.0.0.1' >>  /etc/ldap/ldap.conf
echo 'TLS_CACERT      /etc/ssl/certs/ca-certificates.crt' >> /etc/ldap/ldap.conf

# Download dos ldifs 
rm -rf /root/ldifs*
cd /root/
wget 192.168.1.1/452/ldap/ldifs.tar.gz
tar -xvf ldifs.tar.gz -C .
cd /root/ldifs/

ldapadd -x -D cn=admin,dc=dexter,dc=com,dc=br -f ou.ldif -w 4linux
ldapadd -x -D cn=admin,dc=dexter,dc=com,dc=br -f group.ldif -w 4linux
ldapadd -x -D cn=admin,dc=dexter,dc=com,dc=br -f user.ldif -w 4linux

echo "Para validar o ldap tera que lista suas entradas, enter para continuar" 
read
ldapsearch -x -LLL -b dc=dexter,dc=com,dc=br
