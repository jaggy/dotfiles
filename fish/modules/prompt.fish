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

