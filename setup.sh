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

__binary="${HOME}/.bin";
__docs="${HOME}/.docs";

# create all the directories
echo "Creating vim swap cache.";
mkdir -p "${HOME}/.vim/swapfiles"; # vim swapfiles

echo "Creating a cache directory.";
mkdir -p "${HOME}/.cache/ctrlp";   # control-p

echo "Creating local docs folder.";
mkdir -p ${__docs};

echo "Create a local binary folder.";
mkdir -p ${__binary};

############################################################
# Symlinks
###########################################################
#
# Add the symlinks

ln -s ctags $HOME/.ctags
ln -s npmrc $HOME/.npmrc
ln -s nvim $HOME/.config/nvim
ln -s zsh/zshrc $HOME/.zshrc
ln -s tmux/tmux.conf $HOME/.tmux.conf
ln -s git/gitconfig $HOME/.gitconfig
ln -s git/gitignore_global .gitignore_global
ln -s agignore $HOME/.agignore
