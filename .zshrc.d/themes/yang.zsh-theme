# -*- mode: shell-script;-*-
#PROMPT='%{$fg[yellow]%}λ %m %{$fg[green]%}%c %{$fg[yellow]%}→ $(git_prompt_info)%{$reset_color%}'

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
local virtualenv_info='$(virtualenv_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}on%{$reset_color%} git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

# return status
local ret_status="%(?:%{$fg_bold[green]%}# :%{$fg_bold[red]%}# )"
local user_and_host="%{$fg[magenta]%}%n %{$fg[white]%}at %{$fg[yellow]%}$(box_name)"
local user_color='cyan'; [ $UID -eq 0 ] && user_color='red'

# PROMPT='%{$fg[magenta]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%}[%D %T] in %~
# $# '
PROMPT="${virtualenv_info}\
${ret_status}${user_and_host} \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[blue]%}${current_dir}%{$reset_color%}\
${git_info} \
%{$fg[white]%}[%*]
%{$fg_bold[$user_color]%}λ %{$reset_color%}"

if [ -n "${YANG_HAS_BATTERY+x}" ] && [ -z "$INSIDE_EMACS" ]; then
    # local return_status="%{$fg_bold[red]%}%(?..[%?])%{$reset_color%}"
    RPROMPT='$(battery_level_gauge)%{$reset_color%}';
else
    RPROMPT='%{$reset_color%}';
fi

if [ "$INSIDE_EMACS" = "vterm" ]; then
    setopt PROMPT_SUBST
    PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
fi
