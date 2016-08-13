# set --erase fish_greeting

# Let's just display the mood of the day.
function fish_greeting
    set days        Monday Tuesday Wednesday Thursday Friday Saturday Sunday
    set reactions   ".. (╯°□°）╯︵ ┻━┻" ".. Ughhhhhh.. (￣﹃￣)" ". Midweek! ┬──┬◡ﾉ(° -°ﾉ)" "!!! ヽ(ﾟ〇ﾟ)ﾉ" "!!!└(￣-￣└))   ((┘￣ω￣)┘" "! Time for some rest! (￣^￣)ゞ" "! Work is around the corner.. |･д･)ﾉ"
    set day_of_week $days[(date +"%u")]
    set reaction    $reactions[(date +"%u")]

    echo "It's $day_of_week$reaction"
end
