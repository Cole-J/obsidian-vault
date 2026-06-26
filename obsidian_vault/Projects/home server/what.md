
ssh colejadmin@192.168.4.21

create groups
colejadmin@cosmicserver:/home$ sudo groupadd server-admin
colejadmin@cosmicserver:/home$ sudo groupadd media-access
colejadmin@cosmicserver:/home$ sudo groupadd restricted-user

add groups to users
colejadmin@cosmicserver:/home$ sudo usermod -aG server-admin,media-access colejadmin

lock user to home
colejadmin@cosmicserver:/home$ sudo chmod 700 /home/brianj

give admins explicit access (no sudo) to others home
sudo chown :server-admin /home/colej
sudo chmod 750 /home/colej                        OR 770 for read and write
sudo chown :server-admin /home/brianj
sudo chmod 750 /home/colej

vpn
	openvpn
	wireguard / tailscale / headscale (headscale for self host)

C
P public
R restricted
USERS
colejadmin (sudo)
	user for going to 'sudo -i', thats it
	for quick getting to root
	nano ~/.bashrc
	(add at the bottom) alias r="sudo -i"
	source ~/.bashrc
colej
	for playing around, mainly in the media (has media access)
brianj

guest

GROUPS
sudo (builtin, admin with access to root)
homeview-access (able to view other home dir)
media-access (able to access media drives)
restricted-access (no write privileges)
ssh-access (able to use ssh, if guest is logged into server no further ssh)
newuser-access (can create a new user)
	make a script that creates a new user, and only this can access it


on main ssd

filepath for server root or admin related scripts and data, only those in sudo group have access
OS/srvsys/newuser/newuser.sh
