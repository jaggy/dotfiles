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
ln -s nvim $HOME/.config/nvim
ln -s zsh/zshrc $HOME/.zshrc
ln -s tmux/tmux.conf $HOME/.tmux.conf
ln -s git/gitconfig $HOME/.gitconfig
ln -s git/gitconfig_global $HOME/.gitconfig_global
ln -s agignore $HOME/.agignore
ln -s fish $HOME/.config/fish

############################################################
# Homebrew
###########################################################
#
# We need this for almost everything else.
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
brew install git wget ssh-copy-id tmux z ag fzf fish;

############################################################
# Neovim
############################################################
#
# Our editor of choice.
#
brew install nvim/nvim

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
