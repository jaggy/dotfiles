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

set -x VISUAL       nvim
set -x EDITOR       $VISUAL
set -x DEFAULT_USER jaggy

#-------------------------------------------------------------------------------
# NPM and Node
#-------------------------------------------------------------------------------
#
set -x NODE_PATH    $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -x NPM_PACKAGES $HOME/.npm-packages
set -x MANPATH      $NPM_PACKAGES/share/man:(manpath)

set -x FZF_DEFAULT_COMMAND              'ag --files-with-matches --ignore-case --hidden'
set -x NVIM_TUI_ENABLE_TRUE_COLOR       1
set -x NVIM_TUI_ENABLE_CURSOR_SHAPE     1

source ~/.dotfiles/fish/aliases.fish

