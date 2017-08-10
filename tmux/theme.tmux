# The modes {
setw -g clock-mode-colour colour135
# setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238
# }

# The panes {
set -g pane-border-bg white
set -g pane-border-fg white
set -g pane-active-border-bg white
set -g pane-active-border-fg colour51
# }

# The statusbar {
set -g status-justify left
set -g status-interval 2
set -g status-position bottom
set -g status-bg black
set -g status-fg white
set -g status-attr dim
setw -g status-left ' #S '
set -g status-right ''
set -g window-status-separator ''

setw -g window-status-current-attr bold
setw -g window-status-current-fg white
setw -g window-status-current-bg blue
setw -g window-status-current-format '  #W  '

setw -g window-status-fg white
setw -g window-status-bg "#58ceff"
setw -g window-status-format '  #W  '

setw -g window-status-attr none
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
# }

# The messages {
# set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour166
set -g message-command-fg blue
set -g message-command-bg black
# }


set -g status off