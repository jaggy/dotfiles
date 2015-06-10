# Unbind all the keys
unbind C-b
unbind %
unbind '"'
unbind-key r
unbind-key j
unbind-key k
unbind-key h
unbind-key l
unbind -t vi-copy Enter

#------------------------------------------
# Split Movement
#------------------------------------------
bind-key j select-pane -D
bind-key k select-pane -U
bind-key h select-pane -L
bind-key l select-pane -R

set -g prefix C-a                              # use CTRL-a as a prefix
set -g allow-rename off                        # Disable renaming.
bind-key | split-window -h                     # bind | for v splits
bind-key - split-window -v                     # bind - for h splits
bind-key \ resize -Z                           # bind \ for full screen
bind-key u resize-pane -t 1 -x 50              # resize first pane small
bind-key i select-layout even-horizontal       # resize equal splits
bind-key o resize-pane -t 2 -x 50              # resize the second pane small
bind-key -n C-\; send-keys -R \; clear-history # Clear the buffer.

bind-key r source-file ~/.tmux.conf \; display "Reloaded!"                  # reload the configuration file
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy" # copy to the pipe when hitting enter

#------------------------------------------
# Mouse Toggle
#------------------------------------------
bind m \
  set -g mode-mouse on \;\
  set -g mouse-resize-pane on \;\
  set -g mouse-select-pane on \;\
  set -g mouse-select-window on \;\
  display 'Mouse: ON'

bind M \
  set -g mode-mouse off \;\
  set -g mouse-resize-pane off \;\
  set -g mouse-select-pane off \;\
  set -g mouse-select-window off \;\
  display 'Mouse: OFF'
