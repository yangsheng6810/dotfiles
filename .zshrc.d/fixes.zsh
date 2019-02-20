# to fix emacs tramp hang
if [[ $TERM == "dumb" ]]; then	# in emacs
    # for tramp to not hang, need the following. cf:
    # http://www.emacswiki.org/emacs/TrampMode
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
else
    # your prompt stuff
fi

# For use in multi-term in emacs
# Allows emacs to get the current dir
if [ -n "$INSIDE_EMACS" ]; then
    chpwd() {
        print -P "\033AnSiTc %d"
    }
    print -P "\033AnSiTu %n"
    print -P "\033AnSiTc %d"
fi

# Fix zsh-autosuggestion color scheme
if [ -n "$INSIDE_EMACS" ]; then
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
fi

function zle-line-init () {
    if (( ${+terminfo[smkx]} )); then
	echoti smkx
    fi
}
function zle-line-finish () {
    if (( ${+terminfo[rmkx]} )); then
	echoti rmkx
    fi
}

if [ "$TERM" = "eterm-256color" ]; then
    function precmd() {
    echo -e "\033AnSiTc" "$(pwd)"

    ## "farm" is the name of the server in my .ssh/config
    ## replace it with your server's name, or with $(hostname -f)
    ## you may also want to add 'echo -e "\033AnSiTu" "$LOGNAME"'
    echo -e "\033AnSiTh" $(hostname)
    echo -e "\033AnSiTu" "$LOGNAME"
    }
fi

# Fix PS1 battery indicator problem when we incorrectly have
# more than one batteries
# Sample problematic acpi output:
# > Battery 0: Discharging, 0%, rate information unavailable
# > Battery 1: Discharging, 64%, 03:24:24 remaining
if [[ "$OSTYPE" = linux*  ]] ; then
    function battery_pct() {
        if (( $+commands[acpi] )) ; then
            echo "$(acpi 2>/dev/null | grep -v "unavailable" | cut -f2 -d ',' | tr -cd '[:digit:]')"
        fi
    }
fi
if grep -q Microsoft /proc/version; then
    if [ "$(umask)" = "0000" ]; then
        umask 0022
    fi
fi
