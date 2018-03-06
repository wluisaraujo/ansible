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
		01) Firewall com iptables
		02) DHCP com isc-dhcp
		03) DNS com bind9 
		04) WebServer com apache
		05) MailServer com postfix
		06) Database com mariadb
		07) Catalogo de informações com open-ldap
		08) Storage com raid/mdadm e lvm
		09) FileServer com nfs e smb
		10) Web Proxy com squid
		11) Network com Open-VPN
		12) FTP com vsftpd
		
<b>Informações de Projeto:</b>

	Status: Desenvolvimento
