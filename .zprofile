[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
if [ $DISPLAY ];then
    source "$HOME/.xprofile"
fi
export VDPAU_NVIDIA_NO_OVERLAY=1


export PATH="$HOME/bin:$HOME/.cargo/bin:$PATH"
