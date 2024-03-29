
# export ANTIGEN="$HOME/.local/bin/antigen.zsh"

# # Load antigen and bootstrap the configuration
# # Install antigen
# source "$ZSH_CUSTOM/install.sh"
# # Initialize antigen
# source "$ANTIGEN"
# source "$ZSH_CUSTOM/.antigenrc"

# load zgen
# if the init scipt doesn't exist
# echo "in bootstrap.zsh"
if ! zgen saved; then
  echo "Before loading zgen.zsh, in if"
  # to fix compinit problem of not adding src/ to fpath
  -zgen-add-to-fpath "$ZGEN_DIR/zsh-users/zsh-completions-master/src"
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-completions
  # enable syntax highlighting
  zgen load zsh-users/zsh-syntax-highlighting


  # specify plugins here
  zgen oh-my-zsh

  # default bundles
  # visit https://github.com/unixorn/awesome-zsh-plugins
  my_oh_my_zsh_plugins=(
      git github gitignore gitfast
      python pip virtualenv
      golang
      # heroku # svn-fast-info
      z command-not-found
      history-substring-search # implementation of fish history substring search
      colorize # Plugin highlights file content based on the filename extension.
      mosh
      fzf
      cp gnu-utils extract
      urltools
      archlinux systemd
      battery
      colored-man-pages
      rust
  )

  for plugin in ${my_oh_my_zsh_plugins};do
      zgen oh-my-zsh plugins/${plugin}
  done


  # uncomment the line below to enable theme
  # antigen theme fishy
  # zgen load "$ZSH_CUSTOM/themes/yang.zsh-theme"
  # antigen theme bhilburn/powerlevel9k powerlevel9k

  # syntax color definition
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

  typeset -A ZSH_HIGHLIGHT_STYLES

  # generate the init script from plugins above
  zgen save
fi
# # source "$ZSH_CUSTOM/zgen_load.zsh"
# # echo "After loading zgen config"
# # Finally set up aliases and key bindings
# # custom completion settings
# source "$ZSH_CUSTOM/completion.zsh"
# source "$ZSH_CUSTOM/bindings.zsh"
# source "$ZSH_CUSTOM/aliases.zsh"
# source "$ZSH_CUSTOM/completion.zsh"
source "$ZSH_CUSTOM/fixes.zsh"
# # Load zsh custom sources
# source "$ZSH_CUSTOM/functions.zsh"
source "$ZSH_CUSTOM/themes/yang.zsh-theme"


