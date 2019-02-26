## Primeiros Passos

  $ ansible --help

  $ ansible-doc --help

  $ ansible-playbook --help

  $ ansible -c local -m ping

  $ ansible -c local -m ping localhost 

  $ ansible -c local -m ping localhost  -u -b -k -K

## YAML

https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html


## Inventario

/etc/ansible/hosts

[GRUPO]

[GRUPO:children]

[GRUPO:vars]

## Configuracao

/etc/ansible/ansible.cfg


## Check Syntax

  $ ansible --check

  $ ansible --syntax-check

  $ ansible playbook.yml --list-hosts


## MODULOS -m modules / ARGUMENTOS -a argumento

  $ ansible local -m user -a 'name=suporte state=present'

  $ ansible local -m apt -a 'name=htop state=present'

## Playbooks (yaml)

tasks

vars

handlers


## Run playbook

  $ ansible-playbook meuplaybook.yml

  $ ansible-playbook meuplaybook.yml --list-tasks

  $ ansible-playbook meuplaybook.yml --tags TAREFA01 --list-tasks

  $ ansible-playbook meuplaybook.yml --limit server01

  $ ansible-playbook meuplaybook.yml --limit server01 --tags TAREFA01

  $ ansible-playbook meuplaybook.yml --limit server01 --tags "TAREFA01,TAREFA02"

  $ ansible-playbook meuplaybook.yml --limit server01 --skip-tags TAREFA02

## Roles

## Docs

https://docs.ansible.com/ansible/2.4/playbooks_tags.html
