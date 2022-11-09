# CompuAplicada

------------------------------------------------COMANDOS UTILIZADOS--------------------------------------------


sudo apt-get update  
sudo apt-get upgrade 
sudo apt-get install mdadm  
sudo apt-get install lvm2  
sudo apt-get install git 
sudo apt-get install rsync
sudo apt-get install mutt 


------------------------------------------------SERVIDOR SSH--------------------------------------------


sudo apt-get install openssh-server

vim /etc/network/interfaces
 agregamos:
allow-hotplug enp0s8
iface enp0s8 inet dhcp
 para que nos genere una de forma automática

 luego lo reemplazamos por
allow-hotplug enp0s8
iface enp0s8 inet static
	address 192.168.56.101
	netmask 255.255.255.0
	Gateway 192.168.56.1
 :wq para guardar y salir

ifup enp0s8
systemctl restart networking

vim /etc/ssh/sshd_config
 cambiamos “#permitrootloggin prohinbt-pass” a “permitrootloggin yes” para que nos deje conectarnos como usuario root

systemctl restart sshd
 hacemos un ssh-copy-id –i /computacionaplicada/clave_publica_sonda.pub root@192.168.56.101 para que no nos pida la contraseña al iniciar
 eso guardara la clave publica en /root/.ssh/authorized_keys y known_hosts




------------------------------------------------MYSQL Y APACHE2--------------------------------------------


sudo apt-get install apache2
sudo apt-get apache2-doc 
sudo apt-get apache2-utils  

sudo apt-get install php 
sudo apt-get libapache2-mod-php
sudo apt-get php-mysql 

sudo apt-get install gnupg
sudo wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
 automatizar con 4\n la opcion ok de mysql 

Editamos las prioridades poniendo php del lado izquierdo en “vim /etc/apache2/mods-enabled/dir.conf”

Systemctl restart apache2

dpkg -i mysql-apt-config_0.8.22-1_all.deb

apt-get install mysql-server
Seleccionar contraseña root para mysql 

mysql -uroot -p < db.sql
 mysql -u root –p
podemos verificar con el comando “Use ingenieria;” para cambiar de base de datos
y utilizar un comando “SELECT * from alumnos;” para que nos muestre los datos de la tabla alumnos.
Ejecutar index.php (desde carpeta donde lo tengamos) php index.php


------------------------------------------------RAID 1 Y LVM--------------------------------------------


mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sdc /dev/sdd 

cat /proc/mdstat

pvcreate pv0 /dev/md0

vgcreate vg_tp /dev/md0

lvcreate -L 4.9G -n lv_www vg_tp
lvcreate -L 6.9G -n lv_db vg_tp
lvcreate -L 9.9G -n lv_backup vg_tp

mkfs.ext4 /dev/vg_tp/lv_www
mkfs.ext4 /dev/vg_tp/lv_db
mkfs.ext4 /dev/vg_tp/lv_backup


mkdir /u01
mkdir /u02
mkdir /u03
mount /dev/vg_tp/lv_www /u01
mount /dev/vg_tp/lv_db /u02
mount /dev/vg_tp/lv_backup /u03

df -T

Añadimos a /etc/fstab para persistencia luego de booteo
vim /etc/fstab
/dev/vg_tp/lv_www	    /u01	ext4	rm,auto	  0   0
/dev/vg_tp/lv_db	    /u02	ext4	rm,auto	  0   0
/dev/vg_tp/lv_backup	/u03	ext4	rm,auto 	0   0

mdadm --detail --scan

mv index.php /u01/
mv db.sql /u02/


------------------------------------------------SCRIPTS--------------------------------------------


Cd /opt/
Mkdir tp
Cd tp
Mkdir firewall
Mkdir scripts
Cd scripts
Touch backup_full.sh
Touch monitor.sh
Touch esLaborable.sh
Touch testEsLaborable.sh
Chmod u+x backup_full.sh
Chmod u+x monitor.sh 
Chmod u+x esLaborable.sh
Chmod u+x testEsLaborable.sh
Touch general.log


------------------------------------------------FIREWALL--------------------------------------------


sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables -t nat –F

sudo iptables -P INPUT  DROP

sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT

sudo iptables -A INPUT -i enp0s3  -j ACCEPT
sudo iptables -A OUTPUT -o enp0s3 -j ACCEPT

sudo iptables -A INPUT -p tcp --dport 22 -i enp0s8 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -i enp0s8 -j ACCEPT

sudo iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT


iptables-save > /opt/tp/firewall/firewall.conf
iptables-restore < /opt/tp/firewall/firewall.conf


Luego de tener todo esto pasamos a dejarlo persistente

Crontab –e
