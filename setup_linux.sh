#!/bin/bash

# true: installed false:not installed
AWESOME=true
ZSH=true
WEZTERM=true

# Install awesome & config
if [[ "$AWESOME" == true ]];then
  source ./awesome_setup.sh
  awesome_setup
fi


# Install wezterm terminal
if [[ "$WEZTERM" == true ]];then
    source ./wezterm/wezterm_setup.sh
    wezterm_setup
fi

# Install zsh & oh my zsh
if [[ "$ZSH" == true ]];then
    source ./zsh/zsh_setup.sh
    zsh_setup
fi
