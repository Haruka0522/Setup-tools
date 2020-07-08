git config --global user.name haruka.yamamoto
git config --global user.email haruka.yamamoto@firstloop-tech.com
git config --global color.ui "auto"

# Homebrewのインストール
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# wgetのインストール
brew install wget

# vimのインストール
brew install vim
wget https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
mkdir ./.vim/
chmod +x ./installer.sh
./installer.sh ~/.vim/

# pyenvのインストール
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# tmuxのインストール
brew install tmux

# npmのインストール
brew install npm

# pureプロンプトのインストール
sudo npm install --global pure-prompt --allow-root --unsafe-perm=true

# lsカラーリングの設定
brew install coreutils
echo "export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"" >> ~/.zshrc

# ffmpegのインストール
brew install ffmpeg

# neofetchのインストール
brew install neofetch

# ペイン分割スクリプトを作成 
sudo echo "#!/bin/zsh
tmux split-window -v -p 30
tmux split-window -h -p 66
tmux split-window -h -p 50" > /usr/local/bin/ide
sudo chmod +x /usr/local/bin/ide

# Docker Desktop for Macの導入
wget -P ~/Downloads https://download.docker.com/mac/stable/Docker.dmg

# MongoDB
brew tap mondodb/brew
brew install mongodb-community
