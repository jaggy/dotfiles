# The modes {
setw -g clock-mode-colour colour135
# setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238
# }

# The panes {
set -g pane-border-bg black
set -g pane-border-fg black
set -g pane-active-border-bg black
set -g pane-active-border-fg colour51
# }

# The statusbar {
set -g status-justify left
set -g status-interval 2
set -g status-position bottom
set -g status-bg "#005f5f"
set -g status-fg white
set -g status-left ''
setw -g status-right ' #S '
set -g window-status-separator ''
set -g status-justify left

setw -g window-status-current-attr bold
setw -g window-status-current-fg white
setw -g window-status-current-bg "#008282"
setw -g window-status-current-format '  · #W  '

setw -g window-status-fg white
setw -g window-status-bg "#005f5f"
setw -g window-status-format '  #W  '

setw -g window-status-attr none
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
# }

# The messages {
# set -g message-attr bold
set -g message-fg colour232
set -g message-bg yellow
set -g message-command-fg blue
set -g message-command-bg black
# }
