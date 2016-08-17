#------------------------------------------------------------------------------
# Directory Management
#------------------------------------------------------------------------------
alias ..        "cd .."
alias ...       "cd ../.."
alias ....      "cd ../../.".
alias .....     "cd ../../../.."
alias ll        "ls -lah"
alias sl        "ls"
alias h         "cd ~"

#------------------------------------------------------------------------------
# Git Specifig
#------------------------------------------------------------------------------
alias gti       "git"
alias g         "git"
alias ga        "git add"
alias gaa       "git add -A"
alias gb        "git branch"
alias gc        "git commit -m"
alias gco       "git checkout"
alias gm        "git merge"
alias gs        "git status"
alias gp        "git push"
alias gt        "git tag"
alias gl        "git log"

#------------------------------------------------------------------------------
# Shortcuts
#------------------------------------------------------------------------------
alias tmux      "tmux -u"
alias art       "eval (which php) artisan"
alias cmp       "composer"
alias vi        "nvim"
alias vim       "nvim"

# Run the last command with fucking sudo.
alias fuck      sudo (fc -ln -1)

# Yes because I make this mistake a lot
alias mdkir     "mkdir"


#------------------------------------------------------------------------------
# Stuff
#------------------------------------------------------------------------------
alias tx        "tmuxinator"
alias ct        "colortest"
alias so        "source $HOME/.dotfiles/fish/config.fish"
alias pp        "eval (which php) (which phpunit)"
alias hosts     "sudo nvim /etc/hosts"

alias ignore    "echo -n \"*\n!.gitignore\" >> .gitignore"
alias playlist  "youtube-dl -citk --max-quality FORMAT"
alias rec       "ffmpeg -f qtkit -video_device_index 0 -i ''"

# This suppresses the `running with xdebug` enabled
alias php       "eval (which php) -dzend_extension /usr/local/php5/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"


#------------------------------------------------------------------------------
# Functions
#------------------------------------------------------------------------------
function gi
    /usr/bin/curl -L -s https://www.gitignore.io/api/$argv
end

function phptags
    for directory in src app
        if test -e $directory
            echo "Creating ctags for $directory"
            ctags -f .git/tags $directory
        end
    end

    if test -e vendor/
        echo "Creating ctags for the vendor"
        ctags -f .git/tags.vendor vendor/
    end

    echo "ctags successfully generated."
end

function vm
    set -x TERM 'xterm-256color'

    vagrant ssh

    set -x TERM 'xterm-256color-italic'
end

function ssh
    set -x TERM 'xterm-256color'

    /usr/bin/ssh $argv

    set -x TERM 'xterm-256color-italic'
end
