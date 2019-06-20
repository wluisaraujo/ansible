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

echo -e "$AZUL-> Primeiro, digite o número do IP de rede (Terceiro octeto da rede Dexter)$END"
read X

# Teste de Preenchimento da Variavel X
test ! -z $X || exit


echo -en "$AZUL-> Realizar ajustes no DNS Interno$END"
read

echo 'include "/opt/samba/private/named.conf";' >> /etc/bind/named.conf
cd
rm -rf /etc/bind/named.conf.options

wget 192.168.10.100/452/samba/named.conf.options -O /etc/bind/named.conf.options

rpl X $X /etc/bind/named.conf.options

wget 192.168.10.100/452/samba/dexter.com.br.zone -O /var/cache/bind/dexter.com.br.zone

wget 192.168.10.100/452/samba/99.168.192.in-addr.arpa -O /var/cache/bind/$X.168.192.in-addr.arpa

rpl XX $X /var/cache/bind/dexter.com.br.zone

rm -rf /etc/bind/named.conf.local

wget 192.168.10.100/452/samba/named.conf.local -O /etc/bind/named.conf.local

rpl X $X /etc/bind/named.conf.local

chown bind: /opt/samba/private/named.conf 
chown bind: /opt/samba/private/dns.keytab

clear
echo -en "$AZUL-> Reiniciar os Serviços Pós Configuração$END\n\n\n"
read

service bind9 restart

echo -e "\n$AZUL-> Configuração do DNS para o SAMBA4 Finalizada!!!$END"
