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
alias plz="php please"
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

# Tail Laravel logs.
alias logs="tail -f storage/logs/*"


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
    vagrant ssh
}

function ssh() {
    ssh $@
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



