#!/bin/bash

export TERM=xterm

function f_red {
    tput setaf 1
}
function f_green {
    tput setaf 2
}
function f_yellow {
    tput setaf 3
}
function f_blue {
    tput setaf 4
}
function f_purple {
    tput setaf 5
}
function f_teal {
    tput setaf 6
}
function f_white {
    tput setaf 7
}
function f_amber {
    tput setaf 8
}

function b_red {
    tput setab 1
}
function b_green {
    tput setab 2
}
function b_yellow {
    tput setab 3
}
function b_blue {
    tput setab 4
}
function b_purple {
    tput setab 5
}
function b_teal {
    tput setab 6
}
function b_white {
    tput setab 7
}
function b_amber {
    tput setab 8
}

function red {
    f_red
    echo -e "$1"
    end_color
}
function green {
    f_green
    echo -e "$1"
    end_color
}
function yellow {
    f_yellow
    echo -e "$1"
    end_color
}
function blue {
    f_blue
    echo -e "$1"
    end_color
}
function purple {
    f_purple
    echo -e "$1"
    end_color
}
function teal {
    f_teal
    echo -e "$1"
    end_color
}
function white {
    f_white
    echo -e "$1"
    end_color
}
function amber {
    f_amber
    echo -e "$1"
    end_color
}

function end_color {
    tput sgr0
}

function red-white {
    b_red
    f_white
    echo -en "$1"
    end_color
    echo ''
}


function checkTool {

    if ! [ -x "$(command -v $1)" ]; then
      red-white "Error: $1 is not installed." >&2
      exit 1
    fi
}

function checkVar {
    mycmd='echo $'$1
    data=$(eval $mycmd)

    if [ "x$data" == "x" ]
        then echo "$1 must be set"
        exit 1
    fi
}

function checkVarMessage {
    mycmd='echo $'$1
    data=$(eval $mycmd)

    if [ "x$data" == "x" ]
        then echo "$2"
        exit 1
    fi
}
