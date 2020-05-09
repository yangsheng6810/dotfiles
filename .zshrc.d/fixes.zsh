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

# helper function to get directory from vterm
function vterm_printf(){
    if [ -n "$TMUX" ]; then
        # Tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

# For use in multi-term in emacs
# Allows emacs to get the current dir
if [ -n "$INSIDE_EMACS" ] || [ "$TERM" = "eterm-256color" ]; then
    # For vterm in emacs
    if [ "$INSIDE_EMACS" = "vterm" ]; then
        # function chpwd() {
        #     print -Pn "\e]51;A$(pwd)\e\\";
        # }
        function chpwd() {
            if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
                print -Pn "\e]51A;$(whoami)@$(hostname):$(pwd)\e\\"
            else
                print -Pn "\e]51;A$(pwd)\e\\";
            fi
        }
        # for clear
        if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
            alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
        fi
        # for changing buffer name
        autoload -U add-zsh-hook
        add-zsh-hook -Uz chpwd (){ print -Pn "\e]2;%m:%2~\a" }
        # directory tracking
        vterm_prompt_end() {
            vterm_printf "51;A$(whoami)@$(hostname):$(pwd)";
        }
    else
        function precmd() {
            echo -e "\033AnSiTc" "$(pwd)"

            ## "farm" is the name of the server in my .ssh/config
            ## replace it with your server's name, or with $(hostname -f)
            ## you may also want to add 'echo -e "\033AnSiTu" "$LOGNAME"'
            echo -e "\033AnSiTh" $(hostname)
            echo -e "\033AnSiTu" "$LOGNAME"
        }
        # function chpwd() {
        #     print -P "\033AnSiTc %d"
        # }
        # print -P "\033AnSiTu %n"
        # print -P "\033AnSiTc %d"
    fi
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
