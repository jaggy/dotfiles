# Minimal theme: session left, windows center, git branch right

# Panes - visible borders with padding
set -g pane-border-style fg=colour240
set -g pane-active-border-style fg=colour250
set -g pane-border-format " "

# Status bar
set -g status-position bottom
set -g status-style bg=default,fg=default
set -g status-interval 5

# Session name on the left
set -g status-left '#S '
set -g status-left-length 20

# Git branch on the right
set -g status-right '#(cd #{pane_current_path}; git branch --show-current 2>/dev/null)'
set -g status-right-length 50

# Windows in center
set -g status-justify centre
set -g window-status-separator ' '

# Inactive windows
set -g window-status-format '  #W  '
set -g window-status-style fg=colour240

# Active window with asterisk
set -g window-status-current-format '  * #W  '
set -g window-status-current-style fg=default,bold

# Messages
set -g message-style bg=default,fg=colour196
