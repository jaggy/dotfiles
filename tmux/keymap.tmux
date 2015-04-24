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


set -g prefix C-a                                                       # use CTRL-a as a prefix
bind | split-window -h                                                  # bind | for v splits
bind - split-window -v                                                  # bind - for h splits
bind \ resize -Z                                                        # bind \ for full screen
bind-key u resize-pane -t 1 -x 50                                       # resize first pane small
bind-key i select-layout even-horizontal                                # resize equal splits
bind-key o resize-pane -t 2 -x 50                                       # resize the second pane small
bind r source-file ~/.tmux.conf \; display "Reloaded!"                  # reload the configuration file
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy" # copy to the pipe when hitting enter
bind -n C-k send-keys -R \; clear-history                               # Clear.


# vim based pane selection
bind-key j select-pane -D
bind-key k select-pane -U
bind-key h select-pane -L
bind-key l select-pane -R


###########################
# Bind Mouse Toggle
###########################
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
