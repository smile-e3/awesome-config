########## awesome ################
# 安装awesome桌面
sudo apt install awesome

# 安装lua5.3的环境
sudo apt install lua5.3

# 安装alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y

# 讲awesome配置文件移动到对应的目录下
cp -rf ./awesome/ ~/.config/

# 克隆lain到对应的项目下
git clone https://github.com/lcpz/lain.git ~/.config/awesome/lain

cp ./awesome/.Xresources ~

######### zsh ######################
sudo apt install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

sudo chsh -s /bin/zsh
# The logout this user

cp ./zsh/.zshrc ~
