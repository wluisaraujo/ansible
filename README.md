## Infrastructure as Code with [Ansible](https://www.ansible.com)

## Apresentação

Administrar uma infraestrutura de DataCenter com a solução [Ansible](https://www.ansible.com) para automação.

Por que [Ansible](https://www.ansible.com) ?

Entre as ferramentas, é a menos que interfere entre você e o problema. É a mais efetiva para traduzir o pensamentos em ações.

É All-in-one;

Faz Gerência de Configuração;

Aplica-se com idempotência;

Aplica-se a Convergência;

Mantêm o estado desejado;

Faz Provisionamento;

Integra-se há Orquestração;

-----------    

## Introdução
- [Guia Rápido](https://git.io/fhhZ9)

## Compatibilidade

  - [Fedora](https://getfedora.org/pt_BR/workstation/)
  - [RHEL](https://access.redhat.com/documentation)
  - [CentOS](https://wiki.centos.org/HowTos)
  - [Debian]()
  - [Ubuntu]()
  - [Mac OS]()
  - [Windows (WSL)?]()

# Requerimentos
  - Editores de texto 
    - [vim](https://aurelio.net/vim/)
    - [atom]()
    - [Visual Studio Code]()
-----------

## Ambiente

  - [Ansible](https://www.ansible.com) com [Travis CI](https://travis-ci.org/)
  - [Ansible](https://www.ansible.com) c/ [vagrant](https://www.vagrantup.com/)
  - [Ansible c/ docker](https://github.com/wluisaraujo/iac-ansible-docker.git)
  - [Ansible Galaxy](https://galaxy.ansible.com/)

  Utilizando [Ansible](https://www.ansible.com) para gerenciar configurações de servidores Linux (Debian/CentOs/Ubuntu), MS Windows nodes.

Roles para gerenciar um ambiente de infraestrutura

Role | Ansible Galaxy | Build Status
--- | --- | ---
[Web Server Apache](https://github.com/wluisaraujo/ansible-role-apache) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Apache-blue.svg)](https://galaxy.ansible.com/wluisaraujo/apache) |
[AWX](https://github.com/wluisaraujo/ansible-role-awx)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-AWX-blue.svg)](https://galaxy.ansible.com/wluisaraujo/awx) |
[BaseLine de Servidores](https://github.com/wluisaraujo/ansible-role-commonserver)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-CommonServer-blue.svg)](https://galaxy.ansible.com/wluisaraujo/commonserver) |
[DHCP Server](https://github.com/wluisaraujo/ansible-role-dhcpd)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-DHCPD-blue.svg)](https://galaxy.ansible.com/wluisaraujo/dhcpd) |
[Docker](https://github.com/wluisaraujo/ansible-role-docker)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Docker-blue.svg)](https://galaxy.ansible.com/wluisaraujo/docker) |
[Gitlab](https://github.com/wluisaraujo/ansible-role-gitlab)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Gitlab-blue.svg)](https://galaxy.ansible.com/wluisaraujo/gitlab) |
[DNS GUI WebInterface](https://github.com/wluisaraujo/ansible-role-globodns) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Globo%20DNS-blue.svg)](https://galaxy.ansible.com/wluisaraujo/globodns) |
[Firewall iptables](https://github.com/wluisaraujo/ansible-role-iptables)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-iptables-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iptables) |
[Jenkins](https://github.com/wluisaraujo/ansible-role-jenkins)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Jenkins-blue.svg)](https://galaxy.ansible.com/wluisaraujo/jenkins) |
[Kubernetes](https://github.com/wluisaraujo/ansible-role-k8s)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Kubernetes-blue.svg)](https://galaxy.ansible.com/wluisaraujo/k8s) |
[Mysql Server](https://github.com/wluisaraujo/ansible-role-mariadb)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-MariaDB-blue.svg)](https://galaxy.ansible.com/wluisaraujo/mariadb) |
[DNS Server](https://github.com/wluisaraujo/ansible-role-named)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Named-blue.svg)](https://galaxy.ansible.com/wluisaraujo/named) |
[NFS Server](https://github.com/wluisaraujo/ansible-role-nfs)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-NFS-blue.svg)](https://galaxy.ansible.com/wluisaraujo/nfs) |
[Web Server Nginx](https://github.com/wluisaraujo/ansible-role-nginx)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-NGINX-blue.svg)](https://galaxy.ansible.com/wluisaraujo/nginx) |
[NTP](https://github.com/wluisaraujo/ansible-role-ntp)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-NTP-blue.svg)](https://galaxy.ansible.com/wluisaraujo/ntp) |
[OpenShift (OKD)](https://github.com/wluisaraujo/ansible-role-okd)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-OpenShift-blue.svg)](https://galaxy.ansible.com/wluisaraujo/okd) |
[OpenLadp](https://github.com/wluisaraujo/ansible-role-openldap)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-OpenLdap-blue.svg)](https://galaxy.ansible.com/wluisaraujo/openldap) |
[OpenVPN](https://github.com/wluisaraujo/ansible-role-openvpn)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-OpenVPN-blue.svg)](https://galaxy.ansible.com/wluisaraujo/openvpn) |
[oVirt Guest Agent](https://github.com/wluisaraujo/ansible-role-ovirtguestagent)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Workstation-blue.svg)](https://galaxy.ansible.com/wluisaraujo/workstation) |
[Postsfix](https://github.com/wluisaraujo/ansible-role-postfix)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Postfix-blue.svg)](https://galaxy.ansible.com/wluisaraujo/postfix) |
[PosgreSQL](https://github.com/wluisaraujo/ansible-role-postgresql)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Postgresql-blue.svg)](https://galaxy.ansible.com/wluisaraujo/postgresql) |
[Puppet](https://github.com/wluisaraujo/ansible-role-puppet)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Puppet-blue.svg)](https://galaxy.ansible.com/wluisaraujo/puppet) |
[Webmail RoundCube](https://github.com/wluisaraujo/ansible-role-roundcubemail)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Roundcube-blue.svg)](https://galaxy.ansible.com/wluisaraujo/roundcubemail) |
[Log Server](https://github.com/wluisaraujo/ansible-role-rsyslog)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-rsyslog-blue.svg)](https://galaxy.ansible.com/wluisaraujo/rsyslog) |
[Rundeck](https://github.com/wluisaraujo/ansible-role-rundeck)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Rundeck-blue.svg)](https://galaxy.ansible.com/wluisaraujo/rundeck) |
[Snmpd](https://github.com/wluisaraujo/ansible-role-snmpd)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Snmpd-blue.svg)](https://galaxy.ansible.com/wluisaraujo/snmpd) |
[Proxy Server](https://github.com/wluisaraujo/ansible-role-squid)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Squid-blue.svg)](https://galaxy.ansible.com/wluisaraujo/squid) |
[TheForeman](https://github.com/wluisaraujo/ansible-role-theforeman)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-TheForeman-blue.svg)](https://galaxy.ansible.com/wluisaraujo/theforeman) |
[Users Linux (local)](https://github.com/wluisaraujo/ansible-role-users)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Users-blue.svg)](https://galaxy.ansible.com/wluisaraujo/users) |
[Vagrant](https://github.com/wluisaraujo/ansible-role-vagrant)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Vagrant-blue.svg)](https://galaxy.ansible.com/wluisaraujo/vagrant) |
[FTP Server](https://github.com/wluisaraujo/ansible-role-vsftpd)| [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-vsFTPd-blue.svg)](https://galaxy.ansible.com/wluisaraujo/vsftpd) |
[Desktop Linux](https://github.com/wluisaraujo/ansible-role-workstation.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Workstation-blue.svg)](https://galaxy.ansible.com/wluisaraujo/workstation) | [![Build Status](https://travis-ci.org/wluisaraujo/ansible-role-workstation.svg?branch=master)](https://travis-ci.org/wluisaraujo/ansible-role-workstation)

## Refrências
-----------

[Blog 4Linux](http://blog.4linux.com.br/)

[AnsibleBR](http://ansible-br.org)

[DevDocs](http://devdocs.io/ansible/)

[DoAUTO](https://doauto.blog/?s=ansible)

[Churrops](https://churrops.io/category/devops/ansible)

[Medium](https://medium.com/@ricardson)

[DigitalOcean](https://www.digitalocean.com)

[GiovanniReisNunes](https://giovannireisnunes.wordpress.com)

[Cyberciti](https://www.cyberciti.biz/faq/how-to-set-and-use-sudo-password-for-ansible-vault/)

----------------
[![Author](https://img.shields.io/badge/Author-%40w.luis.araujo-blue.svg)](http://linkedin.com/in/wluisaraujo)

----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html) 
