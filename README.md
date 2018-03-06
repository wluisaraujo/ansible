# Infrastructure as Code with Ansible

<b> Apresentação </b>

  Administrar uma infraestrutura de DataCenter com a solução ansible para automação.


# Infraestrutura 
Utilizando ansible para gerenciar configurações de servidores Linux (Debian/CentOs/Ubuntu), MS Windows nodes.

Nodes: 

	backend		[Container: CentOS Linux ]
	middleware	[Container: Debian Linux ]
	frontend	[Container: Ubuntu Linux ]
	dc-server	[VM: 	    MS Windows   ]

Requerimentos:

	ansible (2.4.2.0)
	docker-ce

Cenário:

	Gerenciar um ambiente de infraestrutura utilizando serviços:
		iptables
		isc-dhcp
		dns
		webserver
		mailserver
		database
		ldapserver
		storage
		file server
		proxy
		open-vpn
		
Informações de Projeto:

	Status: Desenvolvimento
