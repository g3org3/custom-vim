export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="
  --color=bg+:#212121,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934
  --tmux 90%
  --layout reverse
  --info inline 
  --border
  --preview 'bat --color=always --style=numbers --line-range=:500 {}'
  --preview-window right,1,border-horizontal
  --bind 'ctrl-/:change-preview-window(50%|hidden|)'
"
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"
