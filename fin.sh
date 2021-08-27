#!/bin/bash

fin() {
    local fd_params=""
    local custom_cmd=""

    # ===== parsing argument =====

    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -q|--command) custom_cmd=$2; shift ;;
            *) fd_params+="$1 " ;;
        esac
        shift
    done

    # ===== core logic =====

    local pat=$(fdfind $fd_params | peco)

    if [ -z "$pat" ] 
    then
        echo "Result is empty!"
    elif [ -z "$custom_cmd" ]
    then
        echo $pat
    else
        eval $"$custom_cmd $pat"
    fi
}