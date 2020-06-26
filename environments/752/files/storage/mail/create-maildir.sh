#!/bin/bash

for usuario in $(getent passwd | awk -F: '$3 >=1000 { print $1 }' | egrep -v 'nobody|suporte|vagrant'); do

maildirmake /home/$usuario/Maildir
maildirmake /home/$usuario/Maidir/.Enviados
maildirmake /home/$usuario/Maildir/.Rascunhos
maildirmake /home/$usuario/Maildir/.Lixeira
maildirmake /home/$usuario/Maildir/.Spam

chown -R $usuario:$usuario /home/$usuario 

done
