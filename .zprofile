if [ $DISPLAY ];then
    source "$HOME/.xprofile"
fi
export VDPAU_NVIDIA_NO_OVERLAY=1
export LANG=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8


export PATH="$HOME/bin:$HOME/.cargo/bin:$PATH"

# disable oh-my-zsh auto update
export DISABLE_UPDATE_PROMPT=true
export DISABLE_AUTO_UPDATE=true
