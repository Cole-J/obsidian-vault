
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