[main]
logdir=/var/log/puppet
vardir=/var/lib/puppet
ssldir=/var/lib/puppet/ssl
rundir=/var/run/puppet
factpath=$vardir/lib/facter
prerun_command=/etc/puppet/etckeeper-commit-pre
postrun_commnad=/etc/puppet/etckeeper-commit-post
certname = {{master_name}}
dns_alt_name = {{master_name}}, {{master_name_domain}}

[master]
ssl_client_header = SSL_CLIENT_S_DN
ssl_client_file_header = SSL_CLIENT_VERIFY
