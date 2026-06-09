
In the provided makefile, the target 'run', or command 'make run':
- Pulls the current repo data.
- Opens obsidian in this directory.
- Waits for obsidian to close.
- Pushes the updated directory to the repo.

It can be used offline, by using the normal obsidian app, however make sure to manually push once you can reconnect.

For setting up on a new device:
- Navigate to documents.
	- In Ubuntu cmd or windows cmd
		1. bash (to get to the right shell if in windows).
		2. cd Documents
- Create new git repo instance using ssh.
	- git clone git@github.com:Cole-J/obsidian-vault.git
- Create a shortcut (optional):
	- Create new shortcut.
	- Name: Obsidian Vault Sync (can be anything but that's what I'm using for this).
	- Target: C:\Windows\System32\wsl.exe bash -c "cd /mnt/c/Users/colem/Documents/obsidian_vault_g && make run"
	- Change Icon: (again not required but i like it).
		- Look for icons in this file: %USERPROFILE%\AppData\Local\Programs\Obsidian\Obsidian.exe
		- Choose the Obsidian icon.