[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-wluisaraujo-blue.svg)](https://galaxy.ansible.com/wluisaraujo)

### Infrastructure as Code: with [Ansible](https://www.ansible.com)
------------

Descrição
------------

 Praticas do ambiente do curso 752 Linux Servers – Configuration & DevOps

Requisitos
------------

 *

Variaveis Playbooks
--------------

```yaml
MYDOMAIN: dexter.com.br
```

Dependências
------------

*

Exemplo de uso
----------------

```console
domingo@sala-linus:~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml --check
```

Exemplo de uso
----------------

```console
domingo@sala-linus:~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml --check
```

##### Exemplo de uso configurando FIREWALL
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t FIREWALL -C
```

##### Exemplo de uso configurando DNS
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t DNS -C
```

##### Exemplo de uso configurando LDAP
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t LDAP -C
```

##### Exemplo de uso configurando SHARE
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t SHARE -C
```

##### Exemplo de uso configurando DATABASE
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t DATABASE -C
```

##### Exemplo de uso configurando MAIL
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t MAIL -C
```

##### Exemplo de uso configurando VPN
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t VPN -C
```

##### Exemplo de uso configurando APACHE
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t APACHE -C
```

##### Exemplo de uso configurando NGINX
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t NGINX -C
```

##### Exemplo de uso configurando SQUID
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml -l security -t SQUID -C
```

----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)