#-------------------------------------------------------------------------------
# Paths
#-------------------------------------------------------------------------------
#
# We set here our paths so we can access our binaries.
#
set -x PATH /usr/bin /bin /usr/sbin /sbin /usr/local/bin /usr/local/sbin

set -x fish_user_paths $HOME/.bin $HOME/.dotfiles/scripts $HOME/.composer/vendor/bin $HOME/.rvm/bin $NPM_PACKAGES/bin vendor/bin $HOME/Library/Python/3.5/bin $HOME/.fzf/bin

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

source $HOME/.dotfiles/fish/aliases.fish

set fish_greeting ""

function fish_prompt
    set computer (hostname | sed 's/.local//g')
    set directory (basename (pwd))
    set dirty_flag ''
    set git_branch ''

    set git_status (git status 2> /dev/null | tail -n1)

    if [ $git_status -a $git_status != "nothing to commit, working directory clean" ]
        set dirty_flag '*'
    end

    if [ $git_status ]
        set git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    end

    # amber:dotfiles.git (master*) $
    echo -n (set_color red)$computer
    echo -n (set_color white):
    echo -n (set_color green)$directory

    if [ $git_status ]
        echo -n (set_color cyan) "($git_branch""$dirty_flag)"
    end

    echo -n (set_color white) '$ '
end
