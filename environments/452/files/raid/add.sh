#!/bin/bash

vboxmanage createhd --filename sdb --size 5000 --format VDI --variant Standard
vboxmanage createhd --filename sdc --size 5000 --format VDI --variant Standard
vboxmanage createhd --filename sdd --size 5000 --format VDI --variant Standard
vboxmanage createhd --filename sde --size 5000 --format VDI --variant Standard
vboxmanage createhd --filename sdf --size 5000 --format VDI --variant Standard
vboxmanage storageattach 6-Storage --storagectl SATA --type hdd --port 1 --device 0 --medium sdb.vdi
vboxmanage storageattach 6-Storage --storagectl SATA --type hdd --port 2 --device 0 --medium sdc.vdi
vboxmanage storageattach 6-Storage --storagectl SATA --type hdd --port 3 --device 0 --medium sdd.vdi
vboxmanage storageattach 6-Storage --storagectl SATA --type hdd --port 4 --device 0 --medium sde.vdi
vboxmanage storageattach 6-Storage --storagectl SATA --type hdd --port 5 --device 0 --medium sdf.vdi
