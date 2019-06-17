[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-wluisaraujo-blue.svg)](https://galaxy.ansible.com/wluisaraujo)

### Infrastructure as Code: with [Ansible](https://www.ansible.com)
------------

Descrição
------------

Praticas do ambiente do curso [752 Linux Servers – Configuration & DevOps](https://www.4linux.com.br/curso/linux-servers-configuration-devops)

Aula | Conteúdo Programático
--- | --- 
Aula 01 | Gerenciando o Firewall
Aula 02 | DNS Server
Aula 03 | LDAP Server
Aula 04 | Compartilhamento em Rede
Aula 05 | Database Server  
Aula 06 | Mail Server
Aula 07 | VPN Server 
Aula 08 | Web Server
Aula 09 | Load Balancer com Nginx 
Aula 10 | Proxy Server com Squid 3
Aula 11 | Gerenciar ambientes com Ansible 
Aula 12 | Planejamento de Capacidade


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
domingo@sala-linus:~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml --check
```

##### Exemplo de uso configurando FIREWALL
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l security -t FIREWALL -C
```

##### Exemplo de uso configurando DNS
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l "web01,web02" -t DNS -C
```

##### Exemplo de uso configurando LDAP
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l storage -t LDAP -C
```

##### Exemplo de uso configurando SHARE
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t SHARE -C
```

##### Exemplo de uso configurando DATABASE
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t DATABASE -C
```

##### Exemplo de uso configurando MAIL
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t MAIL -C
```

##### Exemplo de uso configurando VPN
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t VPN -C
```

##### Exemplo de uso configurando APACHE
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t APACHE -C
```

##### Exemplo de uso configurando NGINX
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l localhost -t NGINX -C
```

##### Exemplo de uso configurando SQUID
```console
~$ ansible-playbook -i inventory.yml -u suporte -b -k -K main.yml -l security -t SQUID -C
```

----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)