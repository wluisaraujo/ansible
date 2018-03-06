# Infrastructure as Code with Ansible

<b> Apresentação </b>

  Administrar uma infraestrutura de DataCenter com a solução ansible para automação.
  Baseado na metodologia de aulas da Formação Linux; A solução vai implementar serviços para a empresa "Dexter Logistica"


# Infraestrutura 

  Utilizando ansible para gerenciar configurações de servidores Linux (Debian/CentOs/Ubuntu), MS Windows nodes.

<b>Nodes:</b> 

	DataCenter	[VM: Debian Linux ]
	DesktopWindows	[VM: MS Windows]
	FileServer	[VM: CentOS Linux ]
	LinuxExterna	[VM: Debian Linux ]
	LinuxInterna	[VM: Debian Linux ]
	Security	[VM: Debian Linux ]
	Storage		[VM: Debian Linux ]
	WebServerInterno [VM: CentOS Linux ]
	WebServerCloud  [Container: Ubuntu Linux ]

<b>Requerimentos:</b>

	ansible (2.4.2.0)
	docker-ce

<b>Cenário:</b>

	Gerenciar um ambiente de infraestrutura utilizando serviços:
		-  Firewall com iptables
		-  DHCP com isc-dhcp
		-  DNS com bind9 
		-  WebServer com apache
		-  MailServer com postfix
		-  Database com mariadb
		-  Catalogo de informações com open-ldap
		-  Storage com raid/mdadm e lvm
		-  FileServer com nfs e smb
		-  Web Proxy com squid
		-  Network com Open-VPN
		-  FTP com vsftpd
		-  LogServer com rsyslog
		-  Ntp Server 
		
<b>Informações de Projeto:</b>

	Status: Desenvolvimento
