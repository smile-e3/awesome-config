#!/bin/bash

#######################################################################
#                         zsh & on my zsh                             #
#######################################################################
oh_my_zsh(){
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    cp ./zsh/.zshrc ~
}

zsh(){
    sudo apt install zsh
    sudo chsh -s /bin/zsh
    echo "[IMPORT] Please logout the user"
}

zsh_setup(){
    # Is zsh installed?
    if type zsh > /dev/null 2>&1; then
        echo "[INFO] The zsh installed!!"
    else
      zsh
    fi

    # Is oh-my-zsh installed?
    if [ -f $"~/.zshrc" ]; then
      oh_my_zsh
    else
      echo "[INFO] oh-my-zsh installed!!"
    fi
}
