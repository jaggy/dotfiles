### Folder Manipulation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ll='ls -lah'
alias sl="ls"

alias sl2="/usr/local/Cellar/sl/5.02/bin/sl"
alias gti2="/usr/local/Cellar/gti/1.2.0/bin/gti"


### Git Specific
alias gti='git'
alias mdkir='mkdir'
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


### Default Configuration
alias guard='guard -g default'
alias phpcs='phpcs --standard=PSR2 '
alias tmux='tmux -u'
alias psp="phpspec --no-interaction"
alias codecept='codecept'
alias art="php artisan"
alias cmp="composer"
alias py="python3"
alias fuck='sudo $(fc -ln -1)'
alias vm='ssh vagrant@127.0.0.1 -p 2222'
alias gls='gls --color=auto --group-directories-first'
alias cask='brew cask'


### Shortcuts
alias pp="phpunit"
alias so="source $HOME/.zshrc"
alias selenium='java -jar /usr/local/bin/selenium.jar'
alias pg="php $HOME/code/remote-console.git/server.php"
alias mspr="python $HOME/scripts/mspr.py"
alias playlist="youtube-dl -citk --max-quality FORMAT"

alias ignore="echo -n \"*\n!.gitignore\" >> .gitignore"

### Actions
alias hidden='/Users/jaggyspaghetti/utilities/scripts/toggle_hidden_files.sh'
alias spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' && killall Dock"


### PHP Specific
# alias migrate='rake db:migrate VERSION=0 && rake db:migrate && ./Console/cake filling.inject && ./Console/cake setup'
# alias migrate='phinx rollback -t 0 && phinx migrate'
alias migrate='art migrate:refresh --seed'


### Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function cd() {
    builtin cd "$@";

    detectOverrde;
}

function vulnerability_test() {
    x='() { :;}; echo "bash is vulnerable"' bash -c 'echo "Testing vulnerability..."'
}
