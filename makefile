
# default commit message
MSG= "vault update $(shell date '+%Y-%m-%d %H:%M:%S')"

# catch any empty message
default:
	@echo "default"

.PHONY: push pull sync run

pull:
	@echo "fetching and merging changes"
	git pull origin main

pullf:
	@echo "fetching and forcing changes"
	git fetch origin
	git reset --hard origin/main
	git clean -fd

push:
	@echo "saving and pushing local changes"
	git add .
	-git commit -m $(MSG)
	git push origin main

pushf:
	@echo "saving and forcing local changes"
	git add .
	git commit -m $(MSG)
	git push -f origin main

sync: pull pullf push pushf

run: pull
	@echo "opening obsidian"
	@cmd.exe /c start "" /wait "C:/Users/colem/AppData/Local/Programs/Obsidian/Obsidian.exe" "C:/Users/colem/Documents/obsidian_vault_g"
	@echo "obsidian closed"
	@echo "saving"
	@$(MAKE) push
