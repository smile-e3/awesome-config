#!/bin/bash

system_version=`lsb_release -ds`

 wezterm_config_setup(){
    if [ -f $"$HOME/.wezterm.lua" ] || [ -f $"$HOME/.config/wezterm/wezterm.lua" ];then
        echo "[INFO] Wezterm file exits!!"
    else
        mkdir -p $HOME/.config/wezterm/
        cp ./wezterm.lua $HOME/.config/wezterm/
        echo "File is not Exist"
    fi
}

ubuntu22_wezterm(){
    # Is wezterm installed?
    if type wezterm > /dev/null 2>&1; then
        echo "[INFO] The wezterm installed!!"
    else
        # Ubuntu 22.04 install wezterm
        curl -LO https://github.com/wez/wezterm/releases/download/20220624-141144-bd1b7c5d/wezterm-20220624-141144-bd1b7c5d.Ubuntu22.04.deb
        chmod +x ./wezterm-20220624-141144-bd1b7c5d.Ubuntu22.04.deb
        sudo apt install -y ./wezterm-20220624-141144-bd1b7c5d.Ubuntu20.04.deb
        
        # Delete wezterm package
        rm ./wezterm-20220624-141144-bd1b7c5d.Ubuntu20.04.deb
    fi
    
    # wezterm config setup
    wezterm_config_setup
}

wezterm_setup(){
    if [ "${system_version}" == $"Ubuntu 22.04.1 LTS" ];then
        ubuntu22_wezterm
    fi
}

