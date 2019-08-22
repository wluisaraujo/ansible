#! /bin/bash 
# Numero da Maquina do Aluno
USUARIO=

# Teste de Preenchimento da Variavel X
test ! -z $USUARIO || exit

mkdir -p /srv/samba/
mkdir -p /srv/storage/publico
mkdir -p /srv/samba/profiles
mkdir -p /srv/samba/lixeiras
mkdir -p /srv/samba/home/$USUARIO

wget 192.168.1.1/452/samba/logon.vbs -O /opt/samba/var/locks/sysvol/dexter.com.br/scripts/logon.vbs

chown root:users /opt/samba/var/locks/sysvol/dexter.com.br/scripts/logon.vbs
chmod 755 /opt/samba/var/locks/sysvol/dexter.com.br/scripts/logon.vbs
 
net sam set homedir $USUARIO \\\\fileserver\\$USUARIO
net sam set homedrive $USUARIO H:
net sam set profilepath $USUARIO \\\\fileserver\\profiles\\$USUARIO
net sam set logonscript $USUARIO logon.vbs
