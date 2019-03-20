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
  - RHEL
  - CentOS
  - Debian
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
Gerenciar um ambiente de infraestrutura utilizando serviços:

* Ambiente Desktop
  * [Desktop Linux](https://github.com/wluisaraujo/iac-ansible-desktop-environment.git)
  * [Users Linux (local)](https://github.com/wluisaraujo/iac-ansible-local-users.git)

* [BaseLine de Servidores (Compliance)](https://github.com/wluisaraujo/iac-ansible-common-server.git)

* Servidores de Rede
  * [Firewall IPtables](https://github.com/wluisaraujo/iac-ansible-iptables.git)
  * [Servidor DHCP](https://github.com/wluisaraujo/iac-ansible-dhcp-server.git)
  * [VPN Server](http://dev/null)
  * [NTP Server](https://github.com/wluisaraujo/iac-ansible-ntp-server.git)
  * [NTP Client](https://github.com/wluisaraujo/iac-ansible-ntp-client.git)
  * [Log Server]
  * [Log Client](https://github.com/wluisaraujo/iac-ansible-rsyslog-client.git)
  * [NTP Server]
  * [NTP Client]
  * [SNMP Client](https://github.com/wluisaraujo/iac-ansible-snmp-agent.git)
  
* Servidores DNS
  * [Servidor DNS](https://github.com/wluisaraujo/iac-ansible-named-server.git)
  * [Servidor DNS Slave](https://github.com/wluisaraujo/iac-ansible-named-slave.git)
  * [Web Interface Gui](https://github.com/wluisaraujo/iac-ansible-globodns.git)
  
*  Servidores Web
   * [Webserver](https://github.com/wluisaraujo/iac-ansible-webserver.git)
   
* Servidor de E-mail   
   * [MailServer](https://github.com/wluisaraujo/iac-ansible-postfix.git)
   * [WebMail](https://github.com/wluisaraujo/iac-ansible-roundcubemail.git)
   
* Servidor de Banco de Dados   
  * [PostgreSQL Database Server](https://github.com/wluisaraujo/iac-ansible-postgresql.git)
  
* Servidor de Autenticação
  * [LDAP Server](https://github.com/wluisaraujo/iac-ansible-openldap.git)
  
* Servidor de Storage e Compartilhamento
  * [Storage]
  * [File Server]
  
* Servidor de Proxy  
  * [Proxy](https://github.com/wluisaraujo/iac-ansible-squid.git)
  * [Auditoria de Log de Proxy](https://dev/null)
  
* Servidor de FTP
  * [Servidor vsFTPd](https://github.com/wluisaraujo/iac-ansible-vsftpd.git)

* Orquestração de Ambientes Infraestrutura
  * [Puppet](https://github.com/wluisaraujo/iac-ansible-puppet-ce.git)
  
-----------

## Integração

  - Interface Web
  - [GitLab](https://github.com/wluisaraujo/iac-ansible-gitlab.git)
  - [Ansible Tower & AWX](https://github.com/wluisaraujo/iac-ansible-awx.git)
  - [Rundeck](https://github.com/wluisaraujo/iac-ansible-rundeck.git)
  - [Jenkins](https://github.com/wluisaraujo/iac-ansible-jenkins.git)
  - [Foreman](https://github.com/wluisaraujo/iac-ansible-theforeman.git)
  - Project ARA
		
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
