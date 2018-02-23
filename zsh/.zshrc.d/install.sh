# Antigen: https://github.com/zsh-users/antigen

# Install antigen.zsh if not exist
if [ ! -f "$ANTIGEN" ]; then
    echo "Installing antigen ..."
    [ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
    [ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
    [ ! -f "$HOME/.z" ] && touch "$HOME/.z"
    URL="http://git.io/antigen"
    TMPFILE="/tmp/antigen.zsh"
    if [ -x "$(which curl)" ]; then
	curl -L "$URL" -o "$TMPFILE"
    elif [ -x "$(which wget)" ]; then
	wget "$URL" -O "$TMPFILE"
    else
	echo "ERROR: please install curl or wget before installation !!"
	exit
    fi
    if [ ! $? -eq 0 ]; then
	echo ""
	echo "ERROR: downloading antigen.zsh ($URL) failed !!"
	exit
    fi;
    echo "move $TMPFILE to $ANTIGEN"
    mv "$TMPFILE" "$ANTIGEN"
fi
