#!/bin/bash

cat <<EOF >/etc/yum.repos.d/ansible.repo
[ansible]
name=Ansible for Enterprise Linux 7 - $basearch
baseurl=https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-ansible-release

EOF

cat <<EOF >/etc/pki/rpm-gpg/RPM-GPG-KEY-ansible-release
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG/MacGPG2 v2.0.19 (Darwin)

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
OwWvTVGXCPUZTxHiYg==
=msBf
-----END PGP PUBLIC KEY BLOCK-----
EOF
