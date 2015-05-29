#
# ZSH Configuration
# Version 3.0.2
#
#
# Licensed under WTFPL
# Copyright (c) 2014 Jaggy Gauran
# http://jaggygauran.com
#
### ZSH Specific Configuration
#####################################################################
ZSH=$HOME/.oh-my-zsh

# Good themes: awesomepanda, cloud, daveverwer, fwalch, miloshadzic, mrtazz, nanotech
ZSH_THEME="miloshadzic"
CASE_SENSITIVE="true"         # Remove case sensitive autocorrection
DISABLE_AUTO_TITLE=true
DISABLE_CORRECTION="true"     # Disable autocorrection when executing commands
DEFAULT_USER="jaggyspaghetti" # This is to make certain themes look prettier
setopt HIST_IGNORE_SPACE      # Don't log commands prefixed with a space


### Shell Config
#####################################################################
plugins=(git, laravel4)
stty -ixon                  # Removing the bindings from Ctrl-S
export KEYTIMEOUT=1         # kill the timeout when pressing escape
export LC_ALL=en_US.UTF-8   # Fix ZSH and Tmux issues
export LANG=en_US.UTF-8
export EDITOR='vim'         # For tmuxinator

function detectOverrde() {
    ESC_SEQ="\x1b["
    COL_RESET=$ESC_SEQ"39;49;00m"
    COL_RED=$ESC_SEQ"31;01m"
    COL_YELLOW=$ESC_SEQ"33;01m"
    FILE=`pwd`/.zsh.local

    if [ -f $FILE ]; then
        echo "Detected ${COL_RED}.zsh.local${COL_RESET} file.";
        echo "${COL_YELLOW}Loading shell overrides.${COL_RESET}";
        source $FILE
    else
        source $HOME/.dotfiles/zsh/aliases.zsh;
    fi
}


### Exports
#####################################################################

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/zsh/aliases.zsh
source $HOME/.dotfiles/submodules/z.git/z.sh
source $HOME/.dotfiles/completion/tmuxinator.zsh
source /Users/jaggy/.iterm2_shell_integration.zsh

detectOverrde;

### Environment
###  Commands take order of precedence so if you want a native comamnd
###  Make sure you append the $PATH
#####################################################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin

PATH=$HOME/.bin:$PATH                                        # Custom Globals
PATH=/usr/local/php5/bin:$HOME/.composer/vendor/bin:$PATH    # PHP Specific
PATH=$HOME/.rvm/bin:$PATH                                    # Ruby
PATH=vendor/bin/:bin:$PATH                                   # Relative Paths
PATH=$ANDROID_HOME/bin:$PATH                                 # Android

bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

bindkey "^D" beginning-of-line
bindkey "^E" end-of-line

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export FZF_DEFAULT_COMMAND='ag -l -g ""'
