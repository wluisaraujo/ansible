#!/bin/bash

# Barra progresso da configuração, (apenas para fins de organização do script)

ProgressBar() {
tput civis
  for X in $(seq 20)
  do  
  for i in ..
  do  
echo -en "\033[1D$i"
sleep .1
done
done
tput cnorm
}

# Variaveis
AZUL="\033[1;34m"
VERDE="\033[1;32m"
END="\033[m"

echo -en "Script de configuração do Samba4" ;ProgressBar; echo -e " [\033[0;32m ok\033[m ]"

# Teste de Preenchimento da Variavel X
test ! -z $X || exit

echo -en "$AZUL-> Limpar qualquer versão anterior de Samba 3$END"
read
apt-get update
yum erase samba*

echo -en "$AZUL-> Instalar as Dependências do Pacote Samba4$END"
read

apt-get install build-essential libacl1-dev libattr1-dev libgnutls-dev bind9 libreadline-dev python-dev rpl libpython2.6 krb5-user libdm0 acl attr libacl1-dev libblkid-dev gdb pkg-config libpopt-dev libldap2-dev dnsutils libbsd-dev attr ntp

clear
echo -en "$AZUL-> Alterar o /etc/resolv.conf para apontar Local$END"
read

echo "domain dexter.com.br" > /etc/resolv.conf
echo "nameserver 192.168.$X.5" >> /etc/resolv.conf

echo -en "$AZUL-> Baixar e descompactar o Pacote do Samba 4$END"
read

wget 192.168.1.1/452/samba/samba4.tar.gz -O /root/samba4.tar.gz
tar xvf /root/samba4.tar.gz -C /usr/src/

echo -en "$AZUL-> Compilar o Samba4 utilizando a opção --prefix=/opt/samba/ $END"
read

cd /usr/src/samba*
./configure --prefix=/opt/samba/ && make && make install

clear
echo -en "$AZUL-> Alterar o PATH do Root para reconhecer comandos Samba$END"
read

echo "PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/samba/bin:/opt/samba/sbin'" >> /root/.bashrc
source /root/.bashrc

echo -e "$VERDE-> Pronto! Sua PATH passou a incluir os diretórios onde estão os binários do samba $END"

echo $PATH

echo -en "$AZUL-> provisionar o samba, criando o Domínio da Rede - AD (Active Directory)$END"
read

samba-tool domain provision --domain=DEXTER --realm=DEXTER.COM.BR --server-role=dc --adminpass=4LinuxSamba4 --dns-backend=BIND9_DLZ --use-rfc2307


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

echo -en "$AZUL-> Cirar script de inicializacao do servico samba $END"
read

cd /etc/init.d/
wget http://192.168.1.1/452/samba/smb4
chmod +x smb4

insserv -d smb4

echo -en "$AZUL-> Definir Servidor NTP para América do Sul$END"
read

rm -rf /etc/ntp.conf

wget 192.168.1.1/452/samba/ntp.conf -O /etc/ntp.conf

clear
echo -en "$AZUL-> Reiniciar os Serviços Pós Configuração$END\n\n\n"
read

service ntp restart
service bind9 restart
service smb4 restart

clear
echo -en "$AZUL-> Validar o Serviço$END"
sleep 2

echo -en "$AZUL-> Testando o DNS $END"
read

echo -e "\nhost -t SRV _ldap._tcp.dexter.com.br. - PRESSIONE ENTER"
read
host -t SRV _ldap._tcp.dexter.com.br.


echo -e "\nhost -t A dexter.com.br - PRESSIONE ENTER"
read
host -t A dexter.com.br

echo -e "\nsamba_dnsupdate --all-names --verbose  - PRESSIONE ENTER"
read
samba_dnsupdate --all-names --verbose


echo -en "$AZUL-> Testar a Sintaxe do Arquivo do Samba $END"
read

echo -e "\ntestparm - PRESSIONE ENTER"
read
/opt/samba/bin/samba-tool testparm

echo -en "$AZUL-> Testar uma Requisição ao Samba com Smbclient$END"
read

echo smbclient -L fileserver -U%
read
smbclient -L fileserver -U%

#cd /srv
#rm -rf /srv/*
#mkdir publico
#chmod 777 publico

echo -en "$AZUL-> Deslogue do seu terminal pra Atualizar o PATH$END"
read

echo -e "\n$AZUL-> Instalação e Configuração do Samba 4 Finalizada!!!$END"
