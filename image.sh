#!/usr/bin/env bash
clear
size=$(tput cols)
padding=1
_pid=$!

COVERPATH="/tmp/kunst.jpg"
function check_status(){
    #Start kunst regardless
    kunst --size 256x256 --silent > /tmp/kunst.log &
}
function killer_queen(){
    for i in $(ps -aux | grep kunst | tr -s \ | cut -d " " -f 2)
    do
        kill -9 $i &> /dev/null ;
    done
    clear
    echo "Bye!"
}
check_status
trap "killer_queen" SIGHUP SIGINT SIGTERM

function ImageLayer {
    ueberzug layer -sp json
}

COVER="/tmp/kunst.jpg"
X_PADDING=2
Y_PADDING=2

function add_cover {
    if [ -e $COVER ]; then
        echo "{\"action\": \"add\", \"identifier\": \"cover\", \"x\": $X_PADDING, \"y\": $Y_PADDING, \"path\": \"$COVER\"}";
    fi
}

clear
ImageLayer -< <(
    add_cover
    while inotifywait -q -q -e close_write "$COVER"; do
        add_cover
    done
)

