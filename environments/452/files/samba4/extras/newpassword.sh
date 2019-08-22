#!/bin/bash

echo "Qual a nova senha de acesso dos usuários ao samba?"

read SENHA

echo "Resetando a senha de acesso dos usuários ao samba"

for U in $(samba-tool user list | egrep -v "^dns|Administrator|krbtgt|Guest|root"); do samba-tool user setpassword $U --newpassword=$SENHA --must-change-at-next-login; done
