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
alias art       "php artisan"
alias cmp       "composer"
alias vm        "vagrant ssh"
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
alias pp        "php (which phpunit)"
alias hosts     "sudo nvim /etc/hosts"

alias ignore    "echo -n \"*\n!.gitignore\" >> .gitignore"
alias playlist  "youtube-dl -citk --max-quality FORMAT"
alias rec       "ffmpeg -f qtkit -video_device_index 0 -i ''"

# This suppresses the `running with xdebug` enabled
alias php       "php -dzend_extension /usr/local/php5/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so"


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

# Override CD to add a bit more functionality.
# function cd
#     builtin cd $argv
#     source $HOME/.dotfiles/fish/config.fish
# end


#------------------------------------------------------------------------------
# Nostalgia
#------------------------------------------------------------------------------
#
# Here lies the commands I don really need or use anymore but I wanna keep
# just to serve as a reminder on progression.
#
# Yeah. I know, I know, I can just look it back up on git but still, I aint
# comparing all the branches just for nostalgias sake.
#
# alias migrate rake db:migrate VERSION 0 && rake db:migrate && ./Console/cake filling.inject && ./Console/cake setup
# alias migrate phinx rollback -t 0 && phinx migrate
# alias migrate art migrate:refresh --seed

