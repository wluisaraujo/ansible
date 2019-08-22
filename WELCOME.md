## O que é ansible ?

## Como funciona?

- Server Less
  
- conexão via ssh
  
- Orquestrador ou Gerencia de Configurações?

## Instalação:

* Mac OS X:

   $ sudo easy_install pip
   
   $ sudo pip install ansible

* CentOS/Fedora:

   $ sudo yum install ansible

* Ubuntu:

   $ sudo apt-get install software-properties-common
   
   $ sudo apt-add-repository ppa:ansible/ansible
   
   $ sudo apt-get update
   
   $ sudo apt-get install ansible

## Configuracao

   $ cd /etc/ansible 

   $ more /etc/ansible/ansible.cfg

## Inventario

/etc/ansible/hosts

[GRUPO]

[GRUPO:children]

[GRUPO:vars]

## Primeiros Passos

  $ ansible --help

  $ ansible-doc --help

  $ ansible-playbook --help

  $ ansible -c local -m ping

  $ ansible -c local -m ping localhost 

  $ ansible -c local -m ping localhost  -u -b -k -K

## YAML

https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html


## Check Syntax

  $ ansible --check

  $ ansible --syntax-check

  $ ansible playbook.yml --list-hosts


## MODULOS -m modules / ARGUMENTOS -a argumento

  $ ansible local -m user -a 'name=suporte state=present'

  $ ansible local -m apt -a 'name=htop state=present'

## Playbooks (yaml)

```yaml  
---
hosts: *
  tasks:
  - name: 
...
```

## Run playbook

  $ ansible-playbook meuplaybook.yml

  $ ansible-playbook meuplaybook.yml --list-tasks

  $ ansible-playbook meuplaybook.yml --tags TAREFA01 --list-tasks

  $ ansible-playbook meuplaybook.yml --limit server01

  $ ansible-playbook meuplaybook.yml --limit server01 --tags TAREFA01

  $ ansible-playbook meuplaybook.yml --limit server01 --tags "TAREFA01,TAREFA02"

  $ ansible-playbook meuplaybook.yml --limit server01 --skip-tags TAREFA02

## Roles


## Fonte e Referencia  

[#2 SEMANA DEVOPS - O Ansible gerenciando seus servidores](https://www.youtube.com/watch?v=lqmuUuzA39Q)

[Ansible/docs](https://docs.ansible.com/ansible/2.4/playbooks_tags.html)
