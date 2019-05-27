## Infrastructure as Code with Ansible

## Apresentação

Administrar uma infraestrutura de DataCenter com a solução [Ansible](https://www.ansible.com) para automação.

Por que [Ansible](https://www.ansible.com)?

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
  - Ubuntu
  - Mac OS
  - Windows (WSL)?

# Requerimentos
  - Editores de texto 
    - [vim](https://aurelio.net/vim/)
    - atom
    - Visual Studio Code
-----------

## Ambiente

  - [Ansible](https://www.ansible.com) com [Travis CI](https://travis-ci.org/)
  - [Ansible](https://www.ansible.com) c/ [vagrant](https://www.vagrantup.com/)
  - [Ansible c/ docker](https://github.com/wluisaraujo/iac-ansible-docker.git)
  - [Ansible Galaxy](https://galaxy.ansible.com/)

  Utilizando [Ansible](https://www.ansible.com) para gerenciar configurações de servidores Linux (Debian/CentOs/Ubuntu), MS Windows nodes.

Roles para gerenciar um ambiente de infraestrutura

Role | Ansible Galaxy | Build
--- | --- | ---
[Desktop Linux](https://git.io/fjRaK) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Desktop%20Linux-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac_ansible_workstation_environment) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-workstation-environment.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-workstation-environment)
[Users Linux (local)](https://git.io/fjRao) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Local%20Users-blue.svg)](https://git.io/fjRao) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-local-users.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-local-users)
[BaseLine de Servidores (Compliance)](https://git.io/fjRVU) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Common%20Server-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-common-server) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-common-server.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-common-server)
[Firewall IPtables](https://git.io/fjRVT) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Firewall%20IPtables-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-iptables) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-iptables.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-iptables)
[Servidor DHCP](https://git.io/fjRVJ) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Servidor%20DHCP-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-dhcp-server) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-dhcp-server.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-dhcp-server)
[VPN Server](http://)  | |
[NTP Server](https://github.com/wluisaraujo/iac-ansible-ntp-server.git)  | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-NTP%20Server-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-ntp-server) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-ntp-server.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-ntp-server)
[NTP Client](https://github.com/wluisaraujo/iac-ansible-ntp-client.git)  | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-NTP%20Client-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-ntp-client) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-ntp-client.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-ntp-client)
[Log Server](http://dev/null) |  | 
[Log Client](https://github.com/wluisaraujo/iac-ansible-rsyslog-client.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Rsyslog-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-rsyslog-client) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-rsyslog-client.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-rsyslog-client)
[SNMP Client](https://github.com/wluisaraujo/iac-ansible-snmp-agent.git)  | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-SNMP%20SERVER-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-snmp-agent) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-snmp-agent.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-snmp-agent)  
[Servidor DNS](https://github.com/wluisaraujo/iac-ansible-named-server.git)  | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-DNS%20Server-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-named-server) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-named-server.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-named-server)
[Servidor DNS Slave](https://github.com/wluisaraujo/iac-ansible-named-slave.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-DNS%20Slave-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-named-slave) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-named-slave.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-named-slave)
[DNS GUI WebInterface ](https://github.com/wluisaraujo/iac-ansible-globodns.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Globo%20DNS-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-globodns) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-globodns.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-globodns)
[Webserver](https://github.com/wluisaraujo/iac-ansible-webserver.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-WebServer-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-webserver) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-webserver.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-webserver)
[MailServer](https://github.com/wluisaraujo/iac-ansible-postfix.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-MailServer-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-postfix) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-postfix.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-postfix)
[WebMail](https://github.com/wluisaraujo/iac-ansible-roundcubemail.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-RoundCube%20WebMail-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-roundcubemail) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-roundcubemail.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-roundcubemail)
[PostgreSQL Database Server](https://github.com/wluisaraujo/iac-ansible-postgresql.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-SGBD%20PostgreSQL-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-sgdb-postgresql) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-postgresql.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-postgresql)
[LDAP Server](https://github.com/wluisaraujo/iac-ansible-openldap.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-OpenLdap-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-openldap) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-openldap.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-openldap)
[Proxy](https://github.com/wluisaraujo/iac-ansible-squid.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Squid-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-squid) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-squid.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-squid)
[Auditoria de Log de Proxy](https://) |  | 
[Servidor vsFTPd](https://github.com/wluisaraujo/iac-ansible-vsftpd.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-vsFTP%20Server-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-vsftpd) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-vsftpd.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-vsftpd)
[Puppet](https://github.com/wluisaraujo/iac-ansible-puppet-ce.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Puppet-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-puppet-ce) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-puppet-ce.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-puppet-ce)
[GitLab](https://github.com/wluisaraujo/iac-ansible-gitlab.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-GitLab-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-gitlab) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-gitlab.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-gitlab)
[Ansible Tower & AWX](https://github.com/wluisaraujo/iac-ansible-awx.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-AWX-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-awx) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-awx.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-awx)
[Rundeck](https://github.com/wluisaraujo/iac-ansible-rundeck.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Rundeck-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-rundeck) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-rundeck.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-rundeck)
[Jenkins](https://github.com/wluisaraujo/iac-ansible-jenkins.git) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Jenkins-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-jenkins) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-jenkins.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-jenkins)
[Foreman](https://git.io/fjRVK) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-The%20SForeman-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-theforeman) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-theforeman.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-theforeman)
[oVirt Guest Agent](https://git.io/fjRVr) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-oVirt%20SGuestAgent-blue.svg)](https://git.io/fjRVr) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-ovirt-guest-agent.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-ovirt-guest-agent)
[Docker](https://git.io/fjRwT) | [![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Docker-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-docker) | [![Build Status](https://travis-ci.org/wluisaraujo/iac-ansible-docker.svg?branch=master)](https://travis-ci.org/wluisaraujo/iac-ansible-docker)

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
