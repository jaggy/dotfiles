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

rm $HOME/.zshrc
ln -s ctags $HOME/.ctags
ln -s npmrc $HOME/.npmrc
ln -s vim/.vimrc $HOME/.vimrc
ln -s nvim $HOME/.config/nvim
ln -s zsh/.zshrc $HOME/.zshrc
ln -s tmux/.tmux.conf $HOME/.tmux.conf
ln -s git/.gitconfig $HOME/.gitconfig
ln -s git/.gitconfig_global $HOME/.gitconfig_global
ln -s .agignore $HOME/.agignore

############################################################
# Homebrew and Caskroom
###########################################################
#
# Words need not be said to why this is here.
#
if ! function_exists 'brew'; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

############################################################
# Essentials
############################################################
#
# git, wget, ssh-copy-id, and tmux
#
brew install git wget ssh-copy-id tmux;


############################################################
# ag : Silver Searcher
############################################################
#
# This is used as an alternative to the default searching of ctrlp.
# It makes the search significantly faster.
#
if ! function_exists 'ag'; then
    brew install ag;
fi


############################################################
# tmuxinator
############################################################
#
# Let's setup that gems without the need of sudo.
#
# if ! function_exists 'tmuxinator'; then
#     gem install tmuxinator
# fi
