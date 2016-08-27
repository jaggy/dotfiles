#------------------------------------------------------------------------------
# Overriding Defaults
#------------------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ll='ls -lah'
alias sl="ls"
alias h='cd ~'

#------------------------------------------------------------------------------
# Overriding Defaults
#------------------------------------------------------------------------------
alias gti='git'
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gm='git merge'
alias gs='git status'
alias gp='git push'
alias gt='git tag'
alias gl='git log'

#------------------------------------------------------------------------------
# Overriding Defaults
#------------------------------------------------------------------------------
alias tmux='tmux -u'
alias art="php artisan"
alias cmp="composer"
alias vi='nvim'
alias vim='nvim'
alias fuck='sudo $(fc -ln -1)'      # Run the last command with fucking sudo.
alias mdkir='mkdir'                 # Yes because I make this mistake a lot


#------------------------------------------------------------------------------
# Shortcuts
#------------------------------------------------------------------------------
alias tx='tmuxinator'
alias ct="colortest"
alias so="source $HOME/.zshrc"
alias pp="php $(which phpunit)"
alias hosts='sudo nvim /etc/hosts'        # Update the hosts file.

alias ignore="echo -n \"*\n!.gitignore\" >> .gitignore"
alias playlist="youtube-dl -citk --max-quality FORMAT"
alias rec='ffmpeg -f qtkit -video_device_index 0 -i ""'

# This suppresses the `running with xdebug` enabled
alias php="php -dzend_extension=/usr/local/php5/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"


#------------------------------------------------------------------------------
# MacOS Specific
#------------------------------------------------------------------------------
alias spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' && killall Dock"


#------------------------------------------------------------------------------
# Functions
#------------------------------------------------------------------------------
function gi() { /usr/bin/curl -L -s https://www.gitignore.io/api/$@ ;}

function phptags() {
    ctags -f .git/tags src app
    ctags -f .git/tags.vendor vendor

    echo "Generated ctags!"
}

# Override CD to add a bit more functionality.
function cd() {
    builtin cd "$@";

    source $HOME/.zshrc
}

function vm() {
    export TERM='xterm-256color';

    vagrant ssh

    export TERM='xterm-256color-italic';
}

function ssh() {
    export TERM='xterm-256color';

    ssh $@

    export TERM='xterm-256color-italic';
}


#------------------------------------------------------------------------------
# Nostalgia
#------------------------------------------------------------------------------
#
# Here lies the commands I don' really need or use anymore but I wanna keep
# just to serve as a reminder on progression.
#
# Yeah. I know, I know, I can just look it back up on git but still, I ain't
# comparing all the branches just for nostalgia's sake.
#
# alias migrate='rake db:migrate VERSION=0 && rake db:migrate && ./Console/cake filling.inject && ./Console/cake setup'
# alias migrate='phinx rollback -t 0 && phinx migrate'
# alias migrate='art migrate:refresh --seed'



