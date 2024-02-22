git config --global user.name Haruka0522
git config --global user.email harukapc1@gmail.com
git config --global color.ui "auto"

# Homebrewのインストール
# 適当に

# wgetのインストール
brew install wget

# neovimのインストール
brew install neovim

# pyenvのインストール
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# tmuxのインストール
brew install tmux

# npmのインストール
brew install npm

# pureプロンプトのインストール
brew install pure

# lsカラーリングの設定
brew install coreutils
echo "export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"" >> ~/.zshrc

# ffmpegのインストール
brew install ffmpeg

# neofetchのインストール
brew install neofetch

# ペイン分割スクリプトを作成 
#sudo echo "#!/bin/zsh
#tmux split-window -v -p 30
#tmux split-window -h -p 66
#tmux split-window -h -p 50" > /usr/local/bin/ide
#sudo chmod +x /usr/local/bin/ide

# Docker Desktop for Macの導入
# 適当に

# MongoDB
#brew tap mondodb/brew
#brew install mongodb-community

# MySQL
#brew install mysql

# cmake
#brew install cmake

# OpenCV4
#brew install opencv
#brew install pkg-config

# Rust
brew install rustup-init
rustup-init

# exa
cargo install eza

# nerd font
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# git-delta
brew install git-delta

# fig.io
brew install --cask fig


## その他
# discord
# slack
# chrome
