#######################################################################
#                          awesome & config                           #
#######################################################################
awesome(){
    # 安装awesome桌面
    sudo apt install awesome -y
    
    # 安装lua5.3的环境
    sudo apt install lua5.3 -y
    
    # 安装alacritty
    sudo add-apt-repository ppa:aslatter/ppa -y
    sudo apt install alacritty -y
    
    # 讲awesome配置文件移动到对应的目录下
    cp -rf ./awesome/ ~/.config/
    
    # 克隆lain到对应的项目下
    git clone https://github.com/lcpz/lain.git ~/.config/awesome/lain
    
    cp ./awesome/.Xresources ~
}


awesome_setup(){
    if type awesome > /dev/null 2>&1; then
        echo "[INFO] The awesome installed!!"
    else
      awesome  
    fi
  
}
