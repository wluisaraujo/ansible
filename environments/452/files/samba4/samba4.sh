#!/bin/bash
#instalando dependencias
clear
echo -n "
   _____                 _             _  _   _      _
  / ____|               | |           | || | | |    (_)
 | (___   __ _ _ __ ___ | |__   __ _  | || |_| |     _ _ __  _   ___  __
  \___ \ / _\` | '_ \` _ \| '_ \ / _\` | |__   _| |    | | '_ \| | | \ \/ /
  ____) | (_| | | | | | | |_) | (_| |    | | | |____| | | | | |_| |>  <
 |_____/ \__,_|_| |_| |_|_.__/ \__,_|    |_| |______|_|_| |_|\__,_/_/\_\

========================================================================
        Aguarde enquanto configuramos o ambiente para instalação
========================================================================
"





#instalando dependencias
yum install openldap-devel autoconf libattr-devel libxml2-devel krb5-workstation bind-utils pam-devel gcc attr libacl-devel libblkid-devel MakeMaker python-crypto python-devel policycoreutils-python libsemanage-python perl perl-ExtUtils perl-Parse-Yapp perl-Test-Base gnutls-devel readline-devel gdb pkgconfig zlib-devel setroubleshoot-server libaio-devel setroubleshoot-plugins popt-d