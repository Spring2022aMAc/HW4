# HW4
Homework 4 Linux Networking
1.	With your GITHUB account established and your management interface (GITHUB application) functioning, you will write and upload the following 5 simple scripts (a few lines each) to your public GITHUB account.  You must also submit the scripts as a MS Word document (or PDF) to the CANVAS assignment page.

a.	Write a BASH script called intfcAlias.sh that will assign multiple IP addresses to the secondary server interface facing Lan Segment. The following IP addresses should be created: 

20.30.40.2/24,    20.30.40.23/24,     20.30.40.25/24,     20.30.40.80/24 
		
#!/bin/bash
cd /etc/sysconfig/network-scripts/
cp ifcfg-eth1 ifcfg-eth1:0
cat ifcfg-eth1:0 >> DEVICE="eth1:0" \n IPADDR=20.30.40.2/24
cp ifcfg-eth1 ifcfg-eth1:1
cat ifcfg-eth1:0 >> DEVICE="eth1:1" \n IPADDR=20.30.40.23/24
cp ifcfg-eth1 ifcfg-eth1:2
cat ifcfg-eth1:0 >> DEVICE="eth1:2" \n IPADDR=20.30.40.25/24
cp ifcfg-eth1 ifcfg-eth1:3
cat ifcfg-eth1:0 >> DEVICE="eth1:3" \n IPADDR=20.30.40.80/24
ifconfig

b.	Modify the server DHCP.CONF file so that the IP address assignment range is from 150 to 180.  Include the new DHCP.CONF file in your upload to GITHUB and the Word Document upload to CANVAS 
i.	#!/bin/bash
Echo “subnet 20.30.40.0 netmask 255.255.255.0 {\nrange 20.30.40.150 20.30.40.180;\n} >> /etc/dhcp/dhcpd.conf
Sudo systemctl restart dhcpd

c.	Create a BASH shell that will convert the DNS domain configuration files from the “example.org” domain to a domain specified as the input argument to the script.  For example, your script will replace all instances of example.org in the target files /var/named/example.org.db, /var/named/example.org.rev, and /etc/named.conf with YOUR domain name. The new files that are written should be specific to your new domain.  For example if the new domain is “quantum.net” you would write the new files called quantum.net.db and quantum.net.rev.  The original existing files (example.org.db, example.org.rev, and named.conf) should be preserved (not be overwritten or modified in any way). Consider testing your script on some sample files in a directory you create to verify the script is working properly before you try and modify the true target files. 

i.	#!/bin/bash
Sudo cp /var/named/example.org.db /var/named/mcwalter.org.db 
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.db
Sudo cp /var/named/example.org.rev /var/named/mcwalter.org.rev
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.rev
Sudo cp /var/named/named.conf /var/named/mcwalter.org.conf
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.conf
 
