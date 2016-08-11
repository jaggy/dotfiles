#-------------------------------------------------------------------------------
# Paths
#-------------------------------------------------------------------------------
#
# We set here our paths so we can access our binaries.
#
set -x PATH /usr/bin /bin /usr/sbin /sbin /usr/local/bin /usr/local/sbin

set -U fish_user_paths ~/.bin ~/.dotfiles/scripts ~/.composer/vendor/bin ~/.rvm/bin $fish_user_paths
set -U fish_user_paths $NPM_PACKAGES/bin $fish_user_paths
set -U fish_user_paths vendor/bin $fish_user_paths

set -U NPM_PACKAGES $HOME/.npm-packages


source ~/.dotfiles/fish/aliases.fish
