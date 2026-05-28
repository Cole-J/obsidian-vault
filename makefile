

MSG="update"

# git shorthand
git g:
	git add .
	git commit -m $(MSG)
	git push
