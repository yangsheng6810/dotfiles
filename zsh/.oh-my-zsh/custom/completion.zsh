## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
autoload bashcompinit
bashcompinit
set CASE_SENSITIVE
