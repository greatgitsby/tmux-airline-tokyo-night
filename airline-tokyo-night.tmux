#!/usr/bin/env bash

main() {

  ## Colors
  black='#1a1b26'
  white='#c0caf5'
  gray='#a9b1d6'
  dark_gray='#1a1b26'
  yellow='#e0af68'
  light_purple='#7aa2f7'
  dark_purple='#7aa2f7'

  ## Icons
  left_sep=''
  right_sep=''
  right_alt_sep=''

  tmux set-option -g status on
  tmux set-option -g status-left-length 100
  tmux set-option -g status-right-length 100
  tmux set-option -g status-bg "${black}"
  tmux set-option -g pane-active-border-fg "${dark_purple}"
  tmux set-option -g pane-border-fg "${gray}"
  tmux set-option -g message-bg "${gray}"
  tmux set-option -g message-fg "${white}"
  tmux set-option -g message-command-bg "${gray}"
  tmux set-option -g message-command-fg "${white}"
  tmux set-option -g status-left " #I #[fg=${dark_gray},reverse]${right_sep} "
  tmux set-option -g status-left-style "fg=${black},bg=${dark_purple},bold"
  tmux set-option -g status-right "${left_sep}#[bg=${black},reverse] %Y-%m-%d %H:%M "
  tmux set-option -g status-right-style "fg=${light_purple},bg=${dark_gray}"
  tmux set-window-option -g window-status-activity-style "fg=${white},bg=${gray}"
  tmux set-window-option -g window-status-separator ''
  tmux set-window-option -g window-status-format ' #I #W '
  tmux set-window-option -g window-status-style "fg=${yellow},bg=${black}"
  tmux set-window-option -g window-status-current-format \
    "${right_sep}#[fg=${black}] #I ${right_alt_sep} #W #[fg=${dark_gray},reverse]${right_sep}"
  tmux set-window-option -g window-status-current-style "fg=${black},bg=${light_purple}"
}

main

# vim: set filetype=bash
