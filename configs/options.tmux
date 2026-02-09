set-window-option -g mode-keys vi

# remove delay for exiting insert mode with ESC in Neovim
set -sg escape-time 10


setw -g mode-keys vi
set -g mouse on
set-option -g mouse on
set -g status-position top
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM
set -g detach-on-destroy off     # don't exit from tmux when closing a session
set -g base-index 1              # start indexing windows at 1 instead of 0
set -g renumber-windows on       # renumber all windows when any window is closed
set -g set-clipboard on      # use system clipboard


# Configure Online
set -g @online_icon "ok"
set -g @offline_icon "nok"

set -g @resurrect-capture-pane-contents 'on'
set -g @continuum-restore 'on'

# set-option -g default-command "reattach-to-user-namespace -l $SHELL"
if-shell 'test "$(uname -s)" = "Darwin"' 'set-option -g default-command "reattach-to-user-namespace -l $SHELL"'
set -g @yank_with_mouse off 

set -g @fingers-key f


