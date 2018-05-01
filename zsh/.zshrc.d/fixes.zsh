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
