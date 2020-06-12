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
