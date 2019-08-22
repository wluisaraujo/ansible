## O que é ansible ?

## Como funciona?

- ServerLess??? Agent?
  
- conexão via ssh
  
- Orquestrador ou Gerencia de Configurações?

## Instalação:

* Mac OS X:

```console 
vagrant@localhost:~$ sudo easy_install pip
   
vagrant@localhost:~$ sudo pip install ansible
``` 

* CentOS/Fedora:

```console 
vagrant@localhost:~$ sudo yum install ansible

``` 

* Ubuntu:

```console 
vagrant@localhost:~$ sudo apt install -y software-properties-common
   
vagrant@localhost:~$ sudo apt-add-repository --yes --update ppa:ansible/ansible
   
vagrant@localhost:~$ sudo apt-get install ansible
``` 

## Configuracao

```console 
vagrant@localhost:~$ cd /etc/ansible 

vagrant@localhost:~$ more /etc/ansible/ansible.cfg
``` 

## Inventario

```bash 
cat /etc/ansible/hosts

[GRUPO]

[GRUPO:children]

[GRUPO:vars]

```

## Primeiros Passos

```console 
vagrant@localhost:~$ ansible --help

vagrant@localhost:~$ ansible-doc --help

vagrant@localhost:~$ ansible-playbook --help

vagrant@localhost:~$ ansible -c local -m ping

vagrant@localhost:~$ ansible -c local -m ping localhost 

vagrant@localhost:~$ ansible -c local -m ping localhost  -u -b -k -K
``` 

## YAML

https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html


## Check Syntax

```console 
vagrant@localhost:~$ ansible --check

vagrant@localhost:~$ ansible --syntax-check

vagrant@localhost:~$ ansible playbook.yml --list-hosts
``` 


## MODULOS -m modules / ARGUMENTOS -a argumento

```console 
vagrant@localhost:~$ ansible local -m user -a 'name=suporte state=present'

vagrant@localhost:~$ ansible local -m apt -a 'name=htop state=present'
``` 

## Playbooks (yaml)

```yaml  
---
hosts: *
  tasks:
  - name: 
...
```

## Run playbook

```console 
vagrant@localhost:~$ ansible-playbook meuplaybook.yml

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --list-tasks

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --tags TAREFA01 --list-tasks

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --limit server01

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --limit server01 --tags TAREFA01

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --limit server01 --tags "TAREFA01,TAREFA02"

vagrant@localhost:~$ ansible-playbook meuplaybook.yml --limit server01 --skip-tags TAREFA02
```

## Roles


## Fonte e Referencia  

[#2 SEMANA DEVOPS - O Ansible gerenciando seus servidores](https://www.youtube.com/watch?v=lqmuUuzA39Q)

[Ansible/docs](https://docs.ansible.com/ansible/2.4/playbooks_tags.html)
