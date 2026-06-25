
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
	