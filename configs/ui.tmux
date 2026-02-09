set -g status-style 'bg=default' # transparent

# Configure Catppuccin
set -g @catppuccin_flavor "macchiato"
set -g @catppuccin_status_background "#{@thm_surface_0}"
set -g @catppuccin_window_status_style "none"
set -g @catppuccin_pane_status_enabled "off"
set -g @catppuccin_pane_border_status "off"

# status left style
set -g status-left-length 100
set -g status-left "#{prefix_highlight}"
set -ga status-left "#{#[fg=#{@thm_green},bold]  #S }"
set -ga status-left "#[fg=#{@thm_overlay_0}]│"
set -ga status-left "#[fg=#{@thm_maroon},bold]  #{pane_current_command} "
set -ga status-left "#[fg=#{@thm_overlay_0}]│"
set -ga status-left "#[fg=#{@thm_blue},bold]  #(echo '#{pane_current_path}' | sed 's#$HOME#~#; s#\\([^/]*/[^/]*/\\).*\\(/[^/]*/.*\\)$#\\1 ... \\2#; #g')"

# set -g status-justify "left
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr 'fg=black,bg=yellow,bold' # default is 'fg=default,bg=yellow'
set -g @prefix_highlight_show_sync_mode 'on'
set -g @prefix_highlight_sync_mode_attr 'fg=black,bg=green' # default is 'fg=default,bg=yellow'
set -g @prefix_highlight_prefix_prompt 'Prefix'
set -g @prefix_highlight_empty_prompt ' Normal '
set -g @prefix_highlight_copy_prompt ' Copy '
set -g @prefix_highlight_sync_prompt ' Sync '
set -g @prefix_highlight_output_suffix ' '
set -g @prefix_highlight_fg '#{@thm_mantle}' # default is 'colour231'
set -g @prefix_highlight_bg '#{@thm_red}'  # default is 'colour04'

# status right style
set -g status-right-length 100
set -g status-right ""
set -ga status-right '#(tmux-spotify-info)'
set -ga status-right "#[fg=#{@thm_overlay_0}, bold]│"
set -ga status-right "#{?#{e|>=:10,#{battery_percentage}},#{#[bg=#{@thm_red},bold]},#{#[bold,fg=#{@thm_pink}]}} #{battery_icon} #{battery_percentage} "
set -ga status-right "#[fg=#{@thm_overlay_0}, bold]│"
set -ga status-right "#{?#{==:#{online_status},ok},#[fg=#{@thm_mauve}] 󰖩 on ,#[fg=#{@thm_red}]#[reverse] 󰖪 off }"
set -ga status-right "#[fg=#{@thm_overlay_0}, none]│"
set -ga status-right "#[fg=#{@thm_blue},bold] 󰭦 %m-%d-%Y 󰅐 %I:%M %p "



# window style
set -wg automatic-rename on
set -g automatic-rename-format ''
set -g window-status-separator '|'
set -g status-justify 'absolute-centre'
set -g @catppuccin_window_status_style 'custom'
set -g @catppuccin_window_flags ""
set -g @catppuccin_window_number ""
set -g @catppuccin_window_text "#[fg=#{@thm_rosewater},bold] #I#{?#{!=:#{window_name},},: #W , }"
set -g @catppuccin_window_current_number ""
set -g @catppuccin_window_current_text "#[fg=#{@thm_mantle},bg=#{@thm_peach},bold]  #I#{?#{!=:#{window_name},},: #W , }"

