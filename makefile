

MSG="update"

# git shorthand
push:
	git add .
	git commit -m $(MSG)
	git push
