#!/usr/bin/env bash

declare -r __true=0;
declare -r __false=1;

set -o errexit;  # fail on function errors
set -o nounset;  # fail on undeclared variables
set -o pipefail; # piping errors

set -o xtrace;   # debugging
#
# Check if the function exists
#
function function_exists {
    _name=${1};

    if _path="$(type -P "${_name}")" || [ -z "${_path}" ]; then
        return $__false;
    fi

    return $__true;
}


# create all the directories
mkdir -p "${HOME}/.vim/swapfiles"; # vim swapfiles
mkdir -p "${HOME}/.cache/ctrlp";   # control-p

# install homebrew and caskroom
# check if `ag` is installed

if ! function_exists "brew"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
