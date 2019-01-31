# IaC: Infrastructure as Code with Ansible

## Apresentação
-----------

  Administrar uma infraestrutura de DataCenter com a solução ansible para automação.
  Por que Ansible?
  - Entre as ferramentas, é a menos que interfere entre você e o problema. É a mais efetiva para traduzir o pensamentos em ações.
  - É All-in-one;
  - Faz Gerência de Configuração;
  - Aplica-se com idempotência;
  - Aplica-se a Convergência;
  - Mantêm o estado desejado
  - Faz Provisionamento
  - Integra-se há Orquestração 

## Requerimentos
-----------
* Virtu
* Ansible (2.4.2.0)
* Docker (CE)
alBox (5x)

## Ambiente 
-----------

Utilizando ansible para gerenciar configurações de servidores Linux (Debian/CentOs/Ubuntu), MS Windows nodes.
Gerenciar um ambiente de infraestrutura utilizando serviços:

* iptables
* isc-dhcp
* dns
* webserver
* mailserver
* database
* ldapserver
* storage
* file server
* proxy
* open-vpn

## Nodes Inventory 
-----------

* backend		[Container: CentOS Linux ]
* middleware	[Container: Debian Linux ]
* frontend	[Container: Ubuntu Linux ]
* dc-server	[VM: 	    MS Windows   ]


		
## Informações de Projeto:
-----------

* Status: Desenvolvimento

## Author
-----------

* [LUSAR](http://linkedin.com/in/wluisaraujo)
