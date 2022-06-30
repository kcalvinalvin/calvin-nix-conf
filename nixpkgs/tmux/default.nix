{ config, lib, pkgs, ... }:

let
  plugins = with pkgs; [
    tmuxPlugins.tmux-colors-solarized
    tmuxPlugins.resurrect
    tmuxPlugins.sysstat
  ];
in

{
   programs.tmux = {
    enable = true;
    baseIndex = 1; # Widows numbers begin with 1
    keyMode = "vi";
    customPaneNavigationAndResize = true;
    aggressiveResize = true;
    historyLimit = 100000;
    resizeAmount = 5;
    escapeTime = 0;
    clock24 = true;
    terminal = "xterm";  # Don't use 24bit here, it breaks ssh sessions

    extraConfig = ''
      # cat << ►_◄ > /dev/null
      set-window-option -g mode-keys vi
      set-option -g default-shell /run/current-system/sw/bin/fish

      set -g status-right "#{sysstat_cpu} | #{sysstat_mem} | #{sysstat_swap} | #{sysstat_loadavg} | #[fg=cyan]#(echo $USER)#[default]@#H"

      set -g @resurrect-strategy-nvim 'session'

      # -- general -------------------------------------------------------------------
      bind-key l last-window

      set -g default-terminal "screen-256color" # colors!
      setw -g xterm-keys on
      set -s escape-time 0                      # fastest command sequences
      set -sg repeat-time 600                   # increase repeat timeout

      # uncomment to force vi-style key bindings
      # emacs is the default unless $EDITOR or $VISUAL contain 'vi'
      #set -g status-keys vi
      #setw -g mode-keys vi

      # edit configuration
      bind e new-window -n '~/.tmux.conf' '${EDITOR:-vim} ~/.tmux.conf && tmux source ~/.tmux.conf && tmux display "~/.tmux.conf sourced"'

      # reload configuration
      bind r source-file ~/.tmux.conf \; display '~/.tmux.conf sourced'

      # -- display -------------------------------------------------------------------

      set -g base-index 1         # start windows numbering at 1
      setw -g pane-base-index 1   # make pane numbering consistent with windows

      setw -g automatic-rename on # rename window to reflect current program
      # renumber windows when a window is closed
      set -g renumber-windows on

      set -g set-titles on                        # set terminal title
      set -g set-titles-string '#h ❐ #S ● #I #W'

      set -g display-panes-time 800 # slightly longer pane indicators display time
      set -g display-time 1000      # slightly longer status messages display time

      set -g status-interval 10     # redraw status line every 10 seconds

      # 24 hour clock
      setw -g clock-mode-style 24

      # activity
      set -g monitor-activity on
      set -g visual-activity off

      #set -g mouse on

      # -- navigation ----------------------------------------------------------------


      # -- list choice ---------------------------------------------------------------


      # -- edit mode -----------------------------------------------------------------


      # -- copy mode -----------------------------------------------------------------

      # copy to Mac OSX pasteboard
      bind-key -T copy-mode-vi v send -X begin-selection
      bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "pbcopy"
      bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "pbcopy"
      bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "pbcopy"

      # -- user defined --------------------------------------------------------------

      #if '[ -f ~/.tmux.conf.local ]' 'source ~/.tmux.conf.local'


      # -- 8< ------------------------------------------------------------------------
      #Load plugins
      ${lib.concatStrings (map (x: ''
      run-shell ${x.rtp}
      '') plugins)}

      run 'cut -c3- ~/.tmux.conf | sh -s apply_configurable_bindings $tmux_conf_new_windows_retain_current_path $tmux_conf_new_panes_retain_current_path'
      run 'for name in $(printenv | grep -Eo ^tmux_conf_[^=]+); do tmux setenv -gu $name; done;'
      '';
  };
}
