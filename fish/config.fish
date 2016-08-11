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

set -U VISUAL       nvim
set -U EDITOR       $VISUAL
set -U DEFAULT_USER jaggy

#-------------------------------------------------------------------------------
# NPM and Node
#-------------------------------------------------------------------------------
#
set -U NODE_PATH    $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -U NPM_PACKAGES $HOME/.npm-packages
set -U MANPATH      $NPM_PACKAGES/share/man:(manpath)

set -U FZF_DEFAULT_COMMAND              'ag --files-with-matches --ignore-case --hidden'
set -U NVIM_TUI_ENABLE_TRUE_COLOR       1
set -U NVIM_TUI_ENABLE_CURSOR_SHAPE     1

source ~/.dotfiles/fish/aliases.fish

