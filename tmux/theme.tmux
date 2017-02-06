# The modes {
setw -g clock-mode-colour colour135
setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238
# }

# The panes {
set -g pane-border-bg white
set -g pane-border-fg colour238
set -g pane-active-border-bg white
set -g pane-active-border-fg colour51
# }

# The statusbar {
set -g status-justify left
set -g status-interval 2
set -g status-position bottom
set -g status-bg white
set -g status-fg colour137
set -g status-attr dim
set -g status-left '#S    '
set -g status-right ' #[fg=colour233,bg=blue] %b %d, %Y #[fg=colour233,bg=green,bold] %H:%M:%S '
set -g status-right-length 100
set -g status-left-length 20
setw -g window-status-current-attr bold

setw -g window-status-current-fg white
setw -g window-status-current-bg yellow
setw -g window-status-current-format '  #I#[fg=white]:#[fg=white]#W #[fg=white]#F  '

setw -g window-status-fg black
setw -g window-status-bg colour255
setw -g window-status-format '  #I#[fg=colour237]:#[fg=black]#W #[fg=blue]#F  '

setw -g window-status-attr none
setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
# }

# The messages {
set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour166
set -g message-command-fg blue
set -g message-command-bg white
# }
