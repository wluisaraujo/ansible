#!/bin/bash
export DEVICE=
export DOMAIN=
export 


pvcreate /dev/sdX

vgcreate DATA /dev/sdX

lvcreate -l 100%FREE -n LVLUN1	DATA

apt get install tgt

yum install iscsi-initiator-utils parted -y

cat <<EOF > /etc/tgt/conf.d
<target iqn.2018-01.dexter.com.br:lun1>
    backing-store /dev/mapper/dexter_iscsi-dexter_lun1
    initiator-address 172.16.100.203
    incominguser suporte 4linux
</target>
<target iqn.2018-01.dexter.com.br:lun2>
    backing-store /dev/mapper/dexter_iscsi-dexter_lun2
    initiator-address 172.16.100.204
    incominguser suporte 4linux
</target>
EOF

systemctl restart tgt

tgtadm --mode target --op show


# CLIENTE

iscsiadm -m discovery -t st -p storage >> /etc/iscsi/initiatorname.iscsi

