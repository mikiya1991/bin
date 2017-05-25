#! /bin/sh
IPADDR=10.0.2.90
ETHADDR=00:e0:4c:23:45:67
NFS_SERVER_IP=10.0.2.110
NFS_SERVER=${NFS_SERVER_IP}:/home/mikiya/nfs

if ! ifconfig br0 | grep "${IPADDR}" > /dev/null
then
        nm_cfg ethaddr "${ETHADDR}"
        nm_cfg wan ipaddr "${IPADDR}" netmask 255.255.240.0 gateway 10.0.0.1
fi

#if ping -c 1 "${NFS_SERVER_IP}" > /dev/null
#then
#       mount -t nfs -o nolock "${NFS_SERVER}" /mnt
#fi

mkdir -p /media/sdcard
if ls /dev/mmcblk0 > /dev/null
then
        mount /dev/mmcblk0 /media/sdcard
fi