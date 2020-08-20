#!/usr/bin/env bash
set -euo pipefail

FZF_COMPLETE=""
FZF_KEY_BINDINGS=""
case $SHELL in
    *bash)
        FZF_COMPLETE="~/bin/.fzf/shell/completion.bash"
        FZF_KEY_BINDINGS="~/bin/.fzf/shell/key-bindings.bash"
        echo "Prepare fzf for bash"
        ;;
    *zsh)
        FZF_COMPLETE="~/bin/.fzf/shell/completion.zsh"
        FZF_KEY_BINDINGS="~/bin/.fzf/shell/key-bindings.zsh"
        echo "Prepare fzf for zsh"
        ;;
    *fish)
        FZF_KEY_BINDINGS="~/bin/.fzf/shell/key-bindings.fish"
        ;;
    *)
        echo "Unsupported shell"
        ;;
esac

[ -f "$FZF_COMPLETE" ] && [[ $- == *i* ]] && source "$FZF_COMPLETE" 2> /dev/null
[ -f "$FZF_KEY_BINDINGS" ] && source "$FZF_KEY_BINDINGS"
