## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
autoload bashcompinit
bashcompinit
set CASE_SENSITIVE
[ -f ~/.ssh/config ] && : ${(A)ssh_config_hosts:=${${${${(@M)${(f)"$(<~/.ssh/config)"}:#Host *}#Host }:#*\**}:#*\?*}}
[ -f ~/.ssh/known_hosts ] && : ${(A)ssh_known_hosts:=${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*}}

zstyle ':completion:*:*:*' hosts $ssh_config_hosts $ssh_known_hosts
fpath=("$HOME/bin" $fpath)
autoload -U compinit
compinit
