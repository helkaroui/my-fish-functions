function git-search-log -d 'Grep git commit history'
	git log -g --grep="$argv"
end