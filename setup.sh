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

__binary="${HOME}/.bin";
__docs="${HOME}/.docs";

_open "Configuring Filesystem";

    # create all the directories
    _print 'Creating vim swap cache.';
    mkdir -p "${HOME}/.vim/swapfiles"; # vim swapfiles

    _print 'Creating a cache directory.';
    mkdir -p "${HOME}/.cache/ctrlp";   # control-p

    _print 'Creating local docs folder.';
    mkdir -p ${__docs};

    _print 'Create a local binary folder.';
    mkdir -p ${__binary};

_close;





############################################################
# Homebrew and Caskroom
###########################################################
#
# Words need not be said to why this is here.
#
if ! function_exists 'brew'; then
    _open 'Installing Homebrew and Caskroom';

        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew install caskroom/cask/brew-cask;

    _close;
fi


_open 'Installing Applications';

    ############################################################
    # Essentials
    ###########################################################
    if ! function_exists 'tmuxinator'; then
        _print 'Installing `git`';
        brew install git wget ssh-copy-id tmux ;
    fi


    ############################################################
    # ag : Silver Searcher
    ###########################################################
    #
    # This is used as an alternative to the default searching of ctrlp.
    # It makes the search significantly faster.
    #
    if ! function_exists 'ag'; then
        _print 'Installing `ag`';
        brew install ag;
    fi


    ############################################################
    # tMuxinator
    ###########################################################
    if ! function_exists 'tmuxinator'; then
        _print 'Installing `tmuxinator`';
        brew install tmuxinator;
    fi


    ############################################################
    # z: Directory Jumper
    ###########################################################
    if ! function_exists 'z'; then
        _print 'Installing `z`';

        _destination="${__binary}/z.git";
        git clone https://github.com/rupa/z.git $_destination;

        _print 'Creating a symlink';
        ln -s "${_destination}/z.sh" "${__binary}/z";
    fi
_close;


_open 'Creating symlinks';

_close;
