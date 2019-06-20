#!/bin/bash

# Numero da Maquina do Aluno
X=

# Teste de Preenchimento da Variavel X
test ! -z $X || exit

# Variaveis
AZUL="\033[1;34m"
END="\033[m"

echo -en "$AZUL-> Limpando qualquer versão anterior de Samba 3$END"
read

apt-get remove samba*

echo -en "$AZUL-> Populando o /var/cache/apt/archives para evitar Download$END"
read

cd /tmp
wget 192.168.1.1/452/samba/archives.tar.gz
tar xf /tmp/archives.tar.gz
mv /tmp/archives/*.deb /var/cache/apt/archives

echo -en "$AZUL-> Instalando as Dependências do Pacote Samba4$END"
read

apt-get install rpl bind9 ntp libpython2.6 krb5-user libdm0 acl cups

echo -en "$AZUL-> Alterando o /etc/resolv.conf para apontar Local$END"
read

echo "domain dexter.com.br" > /etc/resolv.conf
echo "nameserver 192.168.$X.5" >> /etc/resolv.conf

echo -en "$AZUL-> Instalando o Pacote do Samba 4$END"
read

wget 192.168.1.1/452/samba/sernet-samba4_4.0.0-1_i386.deb
dpkg -i sernet-samba4_4.0.0-1_i386.deb

echo -en "$AZUL-> Alterando o PATH do Root para reconhecer comandos Samba$END"
read

echo "PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/samba/bin:/opt/samba/sbin'" >> /root/.bashrc
source /root/.bashrc

echo -en "$AZUL-> Criar o Domínio da Rede - AD (Active Directory)$END"
read

samba-tool domain provision --domain=DEXTER --realm=DEXTER.COM.BR --server-role=dc --adminpass=4LinuxSamba --dns-backend=BIND9_DLZ --use-rfc2307

echo -en "$AZUL-> Realizar ajustes no DNS Interno$END"
read

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

chown bind: /opt/samba/private/named.conf 
chown bind: /opt/samba/private/dns.keytab

echo -en "$AZUL-> Substituir Arquivo smb.conf com configurações Adicionais$END"
read

rm -rf /opt/samba/etc/smb.conf
wget 192.168.1.1/452/samba/smb.conf -O /opt/samba/etc/smb.conf
rpl XX $X /opt/samba/etc/smb.conf

echo -en "$AZUL-> Definir Domínio no Kerberos - /etc/krb5.conf$END"
read

cp /opt/samba/private/krb5.conf /etc/

echo -en "$AZUL-> Definir Servidor NTP para América do Sul$END"
read

rm -rf /etc/ntp.conf

wget 192.168.1.1/452/samba/ntp.conf -O /etc/ntp.conf

echo -en "$AZUL-> Reiniciando os Serviços Pós Configuração$END\n\n\n"
read

service ntp restart
service bind9 restart
service sernet-samba4 restart

clear
echo -en "$AZUL-> Validando o Serviço$END"
sleep 2

echo -en "$AZUL-> Testando o DNS $END"
read

echo host -t SRV _ldap._tcp.dexter.com.br.
read
host -t SRV _ldap._tcp.dexter.com.br.


echo host -t A dexter.com.br
read
host -t A dexter.com.br


echo samba_dnsupdate --all-names --verbose
read
samba_dnsupdate --all-names --verbose

echo -en "$AZUL-> Testando a Sintaxe do Arquivo do Samba $END"
read

echo testparm
read
testparm

echo -en "$AZUL-> Testando uma Requisição ao Samba com Smbclient$END"
read

echo smbclient -L fileserver -U%
read
smbclient -L fileserver -U%

echo -en "$AZUL-> Deslogue do seu terminal pra Atualizar o PATH$END"
read

echo -en "$AZUL-> Instalação e Configuração do Samba 4 Finalizada!!!$END"
