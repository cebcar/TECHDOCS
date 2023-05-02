alias gba='for k in `git branch --all | sed s/^..//` ; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" "$k"`\\t"$k"; done'
alias gbn='git branch --no-merged '
alias gbs="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias gwb='mkdir -p .cebcar; branchlist=".cebcar/branchlist"; git branch | grep -n "[a-z,A-Z]" > $branchlist; git branch | grep -n "[a-z,A-Z]" > $branchlist; cat $branchlist; echo -n "Select: "; read lineno; wb=$(cat $branchlist | grep "$lineno:" | cut -c 5-); echo "wb: $wb"; rm $branchlist'
alias gsb='autoload -U colors && colors;echo "$fg[yellow]\033[1m";pwd;echo "$reset_color";git status;echo "\nall branches:";git branch;echo "    wb: $fg[cyan]$wb$reset_color\n";echo "unmerged branches:\n";git branch --no-merged'
alias glgr='git log --oneline --graph'
alias glog='git log --oneline --graph -6'
alias ldt='git log --graph --decorate -30 --all --date-order --date=format:"%Y-%m-%d %H:%M:%S" --pretty=format:"%C(cyan)%h%Creset %C(black bold)%ad%Creset%C(auto)%d %s"'
