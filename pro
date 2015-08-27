#pro $1 $2
#$1: hostname
#$2: ipadresse

#change hostname to $1
echo $1 >/etc/hostname
sed -i "s/ubuntu/$1/" /etc/hosts

#change eth1 to eth0
#sed -i '7,$d' /etc/udev/rules.d/70-persistent-net.rules

#add static eth1 to interfaces
echo "">>/etc/network/interfaces
echo "# the second network interface">>/etc/network/interfaces
echo "iface eth1 inet static">>/etc/network/interfaces
echo " address $2">>/etc/network/interfaces
echo " netmask 255.255.255.0">>/etc/network/interfaces

shutdown now -P
