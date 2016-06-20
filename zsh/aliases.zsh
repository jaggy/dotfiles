### Folder Manipulation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ll='ls -lah'
alias sl="ls"
alias h='cd ~'
alias tx='tmuxinator'

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
#alias phpcs='phpcs --standard=PSR2 '
alias tmux='tmux -u'
alias psp="phpspec --no-interaction"
alias codecept='codecept'
alias art="php artisan"
alias mig='art make:migration'
alias cmp="composer"
alias py="python"
alias fuck='sudo $(fc -ln -1)'
alias vm='ssh vagrant@127.0.0.1 -p 2222'
alias gls='gls --color=auto --group-directories-first'
alias cask='brew cask'
alias px='phinx'


### Shortcuts
alias ct="colortest"
alias nn="nvim"
alias php="php -dzend_extension=/usr/local/php5/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"
alias pp="php $(which phpunit)"
alias so="source $HOME/.zshrc"
alias selenium='java -jar /usr/local/bin/selenium.jar'
alias pg="php $HOME/code/remote-console.git/server.php"
alias mspr="python $HOME/scripts/mspr.py"
alias playlist="youtube-dl -citk --max-quality FORMAT"
alias create="composer create-project thirteen/laravel-template --prefer-dist"
alias hosts='sudo vi /etc/hosts'

alias ignore="echo -n \"*\n!.gitignore\" >> .gitignore"

### Actions
alias hidden='/Users/jaggyspaghetti/utilities/scripts/toggle_hidden_files.sh'
alias spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' && killall Dock"


### PHP Specific
# alias migrate='rake db:migrate VERSION=0 && rake db:migrate && ./Console/cake filling.inject && ./Console/cake setup'
# alias migrate='phinx rollback -t 0 && phinx migrate'
alias migrate='art migrate:refresh --seed'
alias rec='ffmpeg -f qtkit -video_device_index 0 -i ""'


### Functions
function gi() { /usr/bin/curl -L -s https://www.gitignore.io/api/$@ ;}

function vulnerability_test() {
    x='() { :;}; echo "bash is vulnerable"' bash -c 'echo "Testing vulnerability..."'
}

# Generate PHP ctags.
function phptags() {
    #find app src vendor tests database bootstrap -type f -name "*.php" | ctags --links=no -L- -R --PHP-kinds=+cf -f ./.git/tags
    ctags -R --PHP-kinds=+cf -f .ctags app vendor src > /dev/null 2>&1
    echo "Generated ctags!"
}

function vms() {
    current_directory=`pwd`;

    cd $HOME/utils/Homestead;
    vagrant up;
    cd $current_directory;
}
