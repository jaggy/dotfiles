#!/usr/bin/env bash

set -o errexit;  # fail on function errors
set -o nounset;  # fail on undeclared variables
set -o xtrace;   # debugging
set -o pipefail; # piping errors


#
# Check if the function exists
#
function function_exists {
    name=${1};

    if ! location="$(type -p "${name}")" || [ -z "${location}" ]; then
        return 0;
    fi

    return 1;
}


# create all the directories
mkdir -p "${HOME}/.vim/swapfiles"; # vim swapfiles
mkdir -p "${HOME}/.cache/ctrlp";   # control-p

# install homebrew and caskroom
# check if `ag` is installed

if function_exists "brew"; then
    echo "function exists";
fi
