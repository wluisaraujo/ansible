## primeiros Passos

ansible --help
ansible-doc --help
ansible-playbook --help
ansible -c local -m ping
ansible -c local -m ping localhost 
ansible -c local -m ping localhost  -u -b -k -K

## inventario
/etc/ansible/hosts
GRUPOS
CHILDREN
VARS

## configuracao
/etc/ansible/ansible.cfg


## check syntax
ansible --check
ansible --syntax-check
ansible playbook.yml --list-hosts


## -m modules -a argumento
ansible local -m user -a 'name=suporte state=present'
ansible local -m apt -a 'name=htop state=present'

## playbooks (yaml)
tasks
vars
handlers


# run playbook
ansible-playbook meuplaybook.yml
ansible-playbook meuplaybook.yml --list-tasks
ansible-playbook meuplaybook.yml --tags TAREFA01 --list-tasks
ansible-playbook meuplaybook.yml --limit server01
ansible-playbook meuplaybook.yml --limit server01 --tags TAREFA01
ansible-playbook meuplaybook.yml --limit server01 --tags "TAREFA01,TAREFA02"
ansible-playbook meuplaybook.yml --limit server01 --skip-tags TAREFA02


https://docs.ansible.com/ansible/2.4/playbooks_tags.html
