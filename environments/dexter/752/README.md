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

### Exemplo de uso configurando FIREWALL
```console
~$ ansible-playbook -i 752-inventory.yml -u suporte -b -k -K 752_AIO.yml --limit="security" --tags "FIREWALL"  --check
```

### DNS
### LDAP
### SHARE
### DATABASE
### MAIL
### VPN
### APACHE
### NGINX
### SQUID




----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)