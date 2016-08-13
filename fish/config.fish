#-------------------------------------------------------------------------------
# Paths
#-------------------------------------------------------------------------------
#
# We set here our paths so we can access our binaries.
#
# I wish there's a way to just append the user paths per line rather than using
# this single line of a mess.
#
set -x PATH /usr/bin    /bin /usr/sbin /sbin /usr/local/bin /usr/local/sbin
set -x fish_user_paths  $HOME/.bin $HOME/.dotfiles/scripts $HOME/.composer/vendor/bin $HOME/.rvm/bin $NPM_PACKAGES/bin vendor/bin $HOME/Library/Python/3.5/bin $HOME/.fzf/bin
set -x VISUAL           nvim
set -x EDITOR           $VISUAL
set -x DEFAULT_USER     jaggy

#-------------------------------------------------------------------------------
# NPM and Node
#-------------------------------------------------------------------------------
set -x NODE_PATH                        $NPM_PACKAGES/lib/node_modules $NODE_PATH
set -x NPM_PACKAGES                     $HOME/.npm-packages
set -x MANPATH                          $NPM_PACKAGES/share/man:(manpath)

set -x FZF_DEFAULT_COMMAND              'ag --files-with-matches --ignore-case --hidden'
set -x NVIM_TUI_ENABLE_TRUE_COLOR       1
set -x NVIM_TUI_ENABLE_CURSOR_SHAPE     1

source $HOME/.dotfiles/fish/aliases.fish
source $HOME/.dotfiles/fish/modules/greeting.fish
source $HOME/.dotfiles/fish/modules/prompt.fish
