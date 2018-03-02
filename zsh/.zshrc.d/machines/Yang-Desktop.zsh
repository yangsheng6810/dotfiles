TERM="xterm-256color"
export DISPLAY="localhost:0.0"
xhost + >/dev/null
# to fix Failed to connect to dbus bug
export NO_AT_BRIDGE=1
