function countdown(){
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do
        echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
        sleep 0.1
    done
}
function stopwatch(){
    date1=`date +%s`;
    while true; do
        echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
        sleep 0.1
    done
}

function printdate(){
    echo $(date +"%Y-%m-%d")
}

function rebuild_modules(){
    dkms autoinstall -k $(uname -r)
}

function ssh_tunnel(){
    # ssh -2qTfnN -D 7070 $1
    ssh -2qTN -D 7070 $1
}

function myip() {
    echo >&2 "Getting your public IPv6 address"
    if type wget >/dev/null; then
        wget -qO- 'http://ipv4.icanhazip.com'
    elif type curl >/dev/null; then
        curl 'http://ipv4.icanhazip.com'
    else
        echo >&2 "Neither of wget and curl found. Install one of them. Abort."
        exit 1
    fi
}

function myip_legacy () {
    dig +short myip.opendns.com @resolver1.opendns.com
}

function jpeg2pdf () {
    convert -background white -page a4 $@
}

function clean_packages (){
    pacman -Qtdq | ifne sudo pacman -Rcs -
}

function video2gif (){
    # ffmpeg -i "$1" -filter_complex "[0:v] fps=12,scale=iw/2:ih/2,split [a][b];[a] palettegen [p];[b][p] paletteuse=new=1" "${1%.*}.gif"
    ffmpeg -i "$1" -filter_complex "[0:v] fps=12,scale=iw:ih,split [a][b];[a] palettegen [p];[b][p] paletteuse=new=1" "${1%.*}.gif"
}

function musl-build() {
  sudo docker run \
    -v cargo-cache:/root/.cargo/registry \
    -v "$PWD:/volume" \
    --rm -it clux/muslrust cargo build --release
}
