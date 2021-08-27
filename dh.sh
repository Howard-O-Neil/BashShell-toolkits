#!/bin/bash

dh () {
    local custom_cmd=""

    # ===== parsing argument =====

    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -q|--command) custom_cmd=$2; shift ;;
        esac
        shift
    done

    # ===== core logic =====

    local pat=$(_z -r 2>&1 | awk '{print $2}' | peco)

    if [ -z "$pat" ]
    then
        echo "Result is empty!"
    elif [ -z "$custom_cmd" ]
    then
        cd "$pat"
    else
        eval $"$custom_cmd $pat"
    fi
}