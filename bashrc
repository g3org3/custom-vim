if [[ $(which exa) ]]; then
  alias l='clear; pwd; exa -T -L 1 --group-directories-first --icons'
  alias ll='l -D'
else 
  alias l='clear; pwd; ls -l'
fi
alias la='l -a'
alias back='cd ..; l'
alias gis='git status'
alias gib='git branch'
alias gic='git checkout'
alias push='git push'
alias pull='git pull'
alias dc='docker-compose'
alias t='tmux attach || tmux'
alias n='pnpm'
alias lg="lazygit"
alias v="lvim"

cd () {
	if [[ -z "$1" ]]; then
		builtin cd ~ || return;
	else
		builtin cd "$1" || return;
	fi
	l;
}

tmx () {
  if [[ -n "$1" ]]; then
    repo=$(ls -t ~/code | grep "$1" | head -1)
    srepo=$(echo $repo | sed s/\\./_/g | sed s/-/_/g)
    cd ~/code/$repo || exit
    tmux new -s "$srepo"
  elif [[ $(tmux ls) ]]; then
    tmux attach;
  else
    cd ~/code || exit;
    tmux new -s "code";
  fi
}

tf () {
  name=$(tmux ls | sed s.:.\ .g | awk '{print $1}' | gum filter);
  tmux attach -t "$name";
}
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:~/.local/bin"
