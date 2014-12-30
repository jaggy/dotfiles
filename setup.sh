#!/usr/bin/env bash

declare -r __true=0;
declare -r __false=1;

set -o errexit;  # fail on function errors
set -o nounset;  # fail on undeclared variables
set -o pipefail; # piping errors

#set -o xtrace;   # debugging
#
# Check if the function exists
#
function function_exists {
    _name=${1};

    if ! _path="$(type -P "${_name}")" || [ -z "${_path}" ]; then
        return $__false;
    fi

    return $__true;
}

function _open {
    _string=${1};

    echo '/*';
    echo '|--------------------------------------------------------------------------';
    echo "| ${_string}";
    echo '|--------------------------------------------------------------------------';
    echo '|';

    return;
}


function _close {

    echo '|';
    echo '*/';

    return;
}

function _print {
    _string=${1};

    echo "| ${_string}";

    return;
}



_open "Configuring Filesystem";

    # create all the directories
    _print 'Creating vim swap cache...'
    mkdir -p "${HOME}/.vim/swapfiles"; # vim swapfiles

    _print 'Creating a cache directory...'
    mkdir -p "${HOME}/.cache/ctrlp";   # control-p

_close;





# install homebrew and caskroom
# check if `ag` is installed

if ! function_exists "brew"; then
    header "INSTALLING HOMEBREW";
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
