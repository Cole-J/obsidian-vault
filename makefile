

# default commit message
MSG= "vault update $(shell date '+%Y-%m-%d %H:%M:%S')"


default:
	@echo "default"

.PHONY: push pull sync run

# make sure to intial add before

push:
	@echo "fetching and merging changes"
	git pull origin main --rebase

push:
	@echo "saving and pushing local changes"
	git add .
	-git commit -m $(MSG)
	git push origin main

sync: pull push

run:# pull
	@echo "Opening Obsidian..."
	@# Passing the path using forward slashes works perfectly in cmd.exe and avoids all backslash escaping hell
	@cmd.exe /c start "" /wait "C:/Users/colem/AppData/Local/Programs/Obsidian/Obsidian.exe" "C:/Users/colem/Documents/obsidian_vault_g"
	@echo "Obsidian closed. Saving work..."
	@$(MAKE) push