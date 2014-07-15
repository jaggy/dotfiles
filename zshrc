#
# ZSH Configuration
# Version 3.0.0
#
#
# Licensed under WTFPL
# Copyright (c) 2014 Jaggy Gauran
# http://twitter.com/jaggygauran
#

### ZSH Specific Configuration
#####################################################################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"     # Remove case sensitive autocorrection
DISABLE_CORRECTION="true" # Disable autocorrection when executing commands


### Shell Config
#####################################################################
plugins=(git)
stty -ixon          # Removing the bindings from Ctrl-S
set -o vi           # Set the terminal bindings to vi
export KEYTIMEOUT=1 # kill the timeout when pressing escape


### Exports
#####################################################################
source $HOME/.zsh_aliases
source $HOME/utilities/z/z.sh
source $ZSH/oh-my-zsh.sh


### Environment
###  Commands take order of precedence so if you want a native comamnd
###  Make sure you append the $PATH
#####################################################################
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin

PATH=$HOME/.bin:$PATH                                        # Custom Globals
PATH=/usr/local/php5/bin:$HOME/.composer/vendor/bin/:$PATH   # PHP Specific
PATH=$HOME/.rvm/bin:$PATH                                    # Ruby
PATH=vendor/bin/:bin/:$PATH                                  # Relative Paths
