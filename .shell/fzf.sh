FZF_COMPLETE=""
FZF_KEY_BINDINGS=""
case $SHELL in
    *bash)
        FZF_COMPLETE="${HOME}/bin/.fzf/shell/completion.bash"
        FZF_KEY_BINDINGS="${HOME}/bin/.fzf/shell/key-bindings.bash"
        ;;
    *zsh)
        FZF_COMPLETE="${HOME}/bin/.fzf/shell/completion.zsh"
        FZF_KEY_BINDINGS="${HOME}/bin/.fzf/shell/key-bindings.zsh"
        ;;
    *fish)
        FZF_KEY_BINDINGS="${HOME}/bin/.fzf/shell/key-bindings.fish"
        ;;
    *)
        echo "Unsupported shell"
        ;;
esac

[ -f "$FZF_COMPLETE" ] && [[ $- == *i* ]] && . "${FZF_COMPLETE}" 2> /dev/null
[ -f "$FZF_KEY_BINDINGS" ] && . "${FZF_KEY_BINDINGS}"
