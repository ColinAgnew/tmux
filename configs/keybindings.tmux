# Prefix Key
set -g prefix C-space
bind-key C-space send-prefix
unbind C-b

# Key Unbinds
unbind r
unbind ^h
unbind ^v
unbind ^i
unbind Left
unbind Right
unbind j
unbind k

# Window Management
bind ^b split-window -v -c "#{pane_current_path}"
bind ^v split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"
bind-key  j switch-client -n
bind-key  k switch-client -p
bind-key h previous-window
bind-key Right previous-window
bind-key l next-window
bind-key Left next-window
bind ^a select-pane -t :.+
bind-key x kill-pane # skip "kill-pane 1? (y/n)" prompt
bind-key X kill-window 
bind-key C-x kill-session
bind space next-layout
#bind-key C-Space switch-client -l


# Pane Management
bind ^i setw synchronize-panes
bind ^C-j resize-pane -D 5
bind ^C-k resize-pane -U 5
bind ^C-l resize-pane -R 5
bind ^C-h resize-pane -L 5

# Reload Config
bind r source-file ~/.config/tmux/tmux.conf

# Copy Mode
bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"
unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse


# Sesh
bind-key "T" run-shell "sesh connect \"$(
  sesh list -tc --icons | fzf-tmux -p 80%,40% \
    --no-sort --ansi --border-label ' sesh ' --prompt '⚡  ' \
    --header '  ^a all ^t tmux ^g configs ^x zoxide ^d tmux kill ^f find' \
    --bind 'tab:down,btab:up' \
    --bind 'ctrl-a:change-prompt(⚡  )+reload(sesh list --icons)' \
    --bind 'ctrl-t:change-prompt(🪟  )+reload(sesh list -t --icons)' \
    --bind 'ctrl-g:change-prompt(⚙️  )+reload(sesh list -c --icons)' \
    --bind 'ctrl-x:change-prompt(📁  )+reload(sesh list -z --icons)' \
    --bind 'ctrl-f:change-prompt(🔎  )+reload(fd -H -d 2 -t d -E .Trash . ~)' \
    --bind 'ctrl-d:execute(tmux kill-session -t {2..})+change-prompt(⚡  )+reload(sesh list --icons)' \
    --preview-window 'right:55%' \
    --preview 'sesh preview {}'
)\""
bind -N "last-session (via sesh) " L run-shell "sesh last"


