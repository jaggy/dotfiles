# Unbind all the keys
unbind C-b
unbind %
unbind '"'
unbind-key r
unbind-key j
unbind-key k
unbind-key h
unbind-key l
unbind -T copy-mode-vi Enter

#------------------------------------------
# Split Movement
#------------------------------------------
bind-key j select-pane -D
bind-key k select-pane -U
bind-key h select-pane -L
bind-key l select-pane -R

set -g prefix C-a                              # use CTRL-a as a prefix
set -g allow-rename off                        # Disable renaming.
bind-key \ split-window -h                     # bind | for v splits
bind-key - split-window -v                     # bind - for h splits
bind-key = resize -Z                           # bind \ for full screen
bind-key u resize-pane -t 1 -x 80              # resize first pane small
bind-key i select-layout even-horizontal       # resize equal splits
bind-key o resize-pane -t 2 -x 80              # resize the second pane small
bind-key ] send-keys -R \; send-keys C-l \; clear-history

bind-key r source-file ~/.tmux.conf \; display " Reloaded!"                  # reload the configuration file
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

# This allows an overflow for tmux buffers so the terminal scrollback is readable.
set -g terminal-overrides 'xterm*:smcup@:rmcup@'

#------------------------------------------
# Mouse Toggle
#------------------------------------------
bind-key -T root WheelUpPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; copy-mode -e; send-keys -M"
bind-key -T root WheelDownPane if-shell -F -t = "#{alternate_on}" "send-keys -M" "select-pane -t =; send-keys -M"

bind m \
    set-option -g -q mouse on \;\
    bind -T root MouseDrag1Border resize-pane -M \;\
    bind -T root MouseDown1Pane select-pane -t=\; send-keys -M \;\
    display 'Mouse: ON'

bind M \
    set-option -g -q mouse off \;\
    unbind -T root MouseDrag1Border \;\
    bind -T root MouseDown1Pane select-pane -t= \;\
    display 'Mouse: OFF'
