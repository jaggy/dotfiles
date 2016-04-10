#
# ZSH Configuration
# Version 3.0.2
#
#
# Licensed under WTFPL
# Copyright (c) 2016 Jaggy Gauran
# https://jag.gy
#
### ZSH Specific Configuration
#####################################################################
ZSH=$HOME/.oh-my-zsh

# Good themes: awesomepanda, cloud, daveverwer, fwalch, miloshadzic, mrtazz, nanotech
ZSH_THEME="daveverwer"
CASE_SENSITIVE="true"         # Remove case sensitive autocorrection
DISABLE_AUTO_TITLE=true
DISABLE_CORRECTION="true"     # Disable autocorrection when executing commands
DEFAULT_USER="jaggy"          # This is to make certain themes look prettier
setopt HIST_IGNORE_SPACE      # Don't log commands prefixed with a space


### Shell Config
#####################################################################
plugins=(git, laravel4)
stty -ixon                  # Removing the bindings from Ctrl-S
export KEYTIMEOUT=1         # kill the timeout when pressing escape
export LC_ALL=en_US.UTF-8   # Fix ZSH and Tmux issues
export LANG=en_US.UTF-8
export EDITOR='vim'         # For tmuxinator

### Exports
#####################################################################

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/zsh/aliases.zsh
source $HOME/.dotfiles/zsh/prompt.zsh
source $HOME/.dotfiles/zsh/completion/tmuxinator.zsh
source $HOME/.dotfiles/zsh/completion/ssh.zsh
source $HOME/.dotfiles/submodules/z.git/z.sh
source $HOME/.iterm2_shell_integration.zsh

### Environment
###  Commands take order of precedence so if you want a native comamnd
###  Make sure you append the $PATH
#####################################################################

export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export CYCLES_OPENCL_TEST=all
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin

PATH=$HOME/.bin:$PATH                                        # Custom Globals
PATH=$HOME/.dotfiles/scripts:$PATH                           # Load the dotfile scripts.
PATH=/usr/local/php5/bin:$HOME/.composer/vendor/bin:$PATH    # PHP Specific
PATH=$HOME/.rvm/bin:$PATH                                    # Ruby
PATH=vendor/bin/:bin:$PATH                                   # Relative Paths
PATH=$ANDROID_HOME/bin:$PATH                                 # Android
PATH="$NPM_PACKAGES/bin:$PATH"
PATH="$HOME/Applications/blender.app/Contents/MacOS:$PATH"   # Blender


#bindkey -v
#bindkey "^F" vi-cmd-mode
#bindkey jj vi-cmd-mode

bindkey "^D" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export FZF_DEFAULT_COMMAND='ag -l -g ""'
