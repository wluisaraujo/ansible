[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-wluisaraujo-blue.svg)](https://galaxy.ansible.com/wluisaraujo)

### Infrastructure as Code: with [Ansible](https://www.ansible.com)
------------

Descrição
------------

Praticas do ambiente do curso [752 Linux Servers – Configuration & DevOps](https://www.4linux.com.br/curso/linux-servers-configuration-devops)

Aula | Conteúdo Programático | Playbook
--- | --- | ---
Aula 01 | Gerenciando o Firewall | aula01.yml
Aula 02 | DNS Server | aula02.yml
Aula 03 | LDAP Server | aula03.yml
Aula 04 | Compartilhamento em Rede | aula04.yml
Aula 05 | Database Server | aula05.yml
Aula 06 | Mail Server | aula06.yml
Aula 07 | VPN Server | aula07.yml
Aula 08 | Web Server | aula08.yml
Aula 09 | Load Balancer com Nginx | aula09.yml 
Aula 10 | Gerenciar ambientes com Ansible | aula10.yml
Aula 11 | Proxy Server com Squid 3 | aula11.yml
Aula 12 | Planejamento de Capacidade | aula12.yml


Requisitos
------------

A 4Linux utiliza Máquinas Virtuais para permitir ao aluno realizar o Curso em qualquer computador ou sistema operacional. Você precisará baixar os Appliances e importá-lo no VirtualBox.

* [Oracle Virtual Box](https://www.virtualbox.org/wiki/Downloads) versão 6 ou mais atual
* [Oracle VM VirtualBox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
 
Appliance (Template)

* [Curso 752 Parte 01](https://storage.googleapis.com/4752-repositorio/Curso-4752-P1.ova)
* [Curso 752 Parte 02](https://storage.googleapis.com/4752-repositorio/Curso-4752-P2.ova)
* [Curso 752 Parte 03](https://storage.googleapis.com/4752-repositorio/Curso-4752-P3.ova)

Variaveis Playbooks
--------------

```yaml
MYDOMAIN: dexter.com.br
```

Dependências
------------

* Appliance devidamente configurado
* Ansible versão 2 ou mais atual

Exemplo de uso
----------------

```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml --check
```

##### Exemplo de uso configurando FIREWALL
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l security -t FIREWALL -C
```

##### Exemplo de uso configurando DNS
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l "web01,web02" -t DNS -C
```

##### Exemplo de uso configurando LDAP
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l storage -t LDAP -C
```

##### Exemplo de uso configurando SHARE
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t SHARE -C
```

##### Exemplo de uso configurando DATABASE
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t DATABASE -C
```

##### Exemplo de uso configurando MAIL
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t MAIL -C
```

##### Exemplo de uso configurando VPN
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t VPN -C
```

##### Exemplo de uso configurando APACHE
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t APACHE -C
```

##### Exemplo de uso configurando NGINX
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t NGINX -C
```

##### Exemplo de uso configurando SQUID
```console
vagrant@localhost:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l security -t SQUID -C
```

----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)
