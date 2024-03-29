#!/bin/sh
sudo apt update

#いろいろ
sudo apt install git gcc make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev

#curlのインストール
sudo apt install -y curl

#unzipのインストール
sudo apt install -y unzip

#Gitの設定
sudo apt install -y git
git config --global user.name Haruka0522
git config --global user.email harukapc1@gmail.com
git config --global color.ui "auto"
git config --global url.git@github.com:.insteadOf https://github.com/

#bashからzshに変更
sudo apt install -y zsh
which zsh
chsh

#neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

#pythonのコードチェックツール
pip3 install -y flake8

#pythonの自動修正ツール
pip3 install -y autopep8

#ターミナルにSLを走らせたい
sudo apt install -y sl

#pipのインストール
sudo apt install -y python3-pip

#Jupyter Notebook系のインストール(python3のみ)
pip3 install pandas
pip3 install sklearn
sudo apt install -y jupyter-notebook
pip3 install chainer
pip3 install tensorflow
pip3 install pandas-ml

#colordiffのインストール
sudo apt install -y colordiff

#tesseractのインストール
sudo add-apt-repository ppa:alex-p/tesseract-ocr
sudo apt update
sudo apt install -y tesseract-ocr
sudo apt install -y libtesseract-dev
sudo apt install -y tesseract-ocr-jpn  tesseract-ocr-jpn-vert
sudo apt install -y tesseract-ocr-script-jpan tesseract-ocr-script-jpan-vert

#neofetchのインストール
sudo apt install -y neofetch

#テーマ、アイコンを変更
sudo add-apt-repository ppa:dyatlov-igor/materia-theme
sudo apt update
sudo apt install -y materia-gtk-theme
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install -y papirus-icon-theme
sudo apt install -y gnome-tweaks

#Google Chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install -y google-chrome-stable

#ChromeDriverのインストール
cd /tmp/
curl -O https://chromedriver.storage.googleapis.com/83.0.4103.39/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
rm chromedriver_linux64.zip

#Arduino IDE 1.8.9
cd ~/Downloads
wget https://www.arduino.cc/download_handler.php?f=/arduino-1.8.9-linux64.tar.xz
tar Jxvf arduino-1.8.9-linux64.tar.xz
sudo mv arduino-1.8.9 /opt/
cd /opt/arduino-1.8.9/
sudo ./install.sh

#Teensyduino
cd ~/Downloads
wget http://www.pjrc.com/teensy/49-teensy.rules
sudo mv 49-teensy.rules /etc/udev/rules.d
wget https://www.pjrc.com/teensy/td_147/TeensyduinoInstall.linux64
chmod +x TeensyduinoInstall.linux64
./TeensyduinoInstall.linux64

#VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code

#pyenvのインストール
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

#pyenv-virtualenvのインストール
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
echo export PYENV_VIRTUALENV_DISABLE_PROMPT=1 >> ~/.zshrc
source ~/.zshrc

#protobufのインストール
curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip
unzip protoc-3.11.3-linux-x86_64.zip
sudo mv bin/* /usr/local/bin/
sudo mv include/* /usr/local/include/
rm -rf protoc-3.11.3-linux-x86_64.zip bin include

#GNOME Shellの時刻表示の設定
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true

#Wiresharkのインストール
sudo apt install -y wireshark

# install node
sudo apt install -y nodejs
sudo apt install -y npm

#GTOPのインストール
#sudo apt update
#sudo apt install -y nodejs yarn build-essential
#sudo apt install -y npm
#sudo npm install gtop -g

#IPAフォントのインストール
sudo apt install -y fonts-ipafont fonts-ipaexfont
sudo fc-cache -fv

#pureプロンプトのインストール
sudo npm install --global pure-prompt --allow-root --unsafe-perm=true

#VoTTのインストール
wget github.com/microsoft/VoTT/releases/download/v2.1.0/vott-2.1.0-linux.snap
cd Downloads
sudo snap install vott-2.1.0-linux.snap --dangerous

#ffmpegのインストール
sudo apt install -y ffmpeg

#boostnoteのインストール
cd Downloads
wget https://github.com/BoostIO/BoostNote.next/releases/download/v0.3.0/boost-note-linux.deb
sudo apt install ./boost-note-linux.deb
cd ~

#Dockerのインストール
sudo apt install -y apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install -y docker-ce

#Dockerをsudoなしで利用できるように
sudo groupadd docker
sudo usermod -aG docker $USER

#Docker Composeのインストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Herokuのインストール
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

#tmuxのインストール
sudo apt -y install tmux

#ペイン分割スクリプトを作成
sudo echo "#!/bin/zsh
tmux split-window -v -p 30
tmux split-window -h -p 66
tmux split-window -h -p 50" > /usr/local/bin/ide
sudo chmod +x /usr/local/bin/ide

#PC情報一覧スクリプトを作成
sudo echo "#!/bin/zsh
tmux split-window -h -p 50
tmux split-window -v -p 50
tmux split-window -h -p 20
tmux send-key -t 1 C-z "neofetch" Enter
tmux send-key -t 2 C-z "nvidia-smi -l" Enter
tmux send-key -t 3 C-z "watch -n 1 sensors" Enter
tmux send-key -t 0 C-z "gtop" Enter" > /usr/local/bin/pcinfo
sudo chmod +x /usr/local/bin/pcinfo

#dotfileの設定
cd ~
git clone https://github.com/Haruka0522/dotfiles/
cd dotfile
chmod +x ./setup.sh
./setup.sh
cd ~

#OBS studioのインストール
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
sudo apt update
sudo apt install -y obs-studio

#treeのインストール
sudo apt install -y tree

#simplescreenrecorderのインストール
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt update
sudo apt install -y simplescreenrecorder

#flutterの環境構築
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.17.1-stable.tar.xz
tar xf flutter_linux_1.17.1-stable.tar.xz
rm flutter_linux_1.17.1-stable.tar.xz

#kvmのインストール
sudo apt install -y qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils

#capslockとctrlの入れ替え
sudo chmod a+w /etc/default/keyboard
echo 'XKBOPTIONS="ctrl:nocaps"' >> /etc/default/keyboard

#MeshLab
sudo apt install -y meshlab

#clang-formatのインストール
sudo apt install -y clang-format

#Brave browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

#unetbootin
sudo add-apt-repository ppa:gezakovacs/ppa
sudo apt update
sudo apt -y install unetbootin

#gparted
sudo apt -y install gparted

#MeCab
sudo apt -y install mecab
sudo apt -y install swig
sudo apt -y install libmecab-dev
sudo apt -y install mecab-ipadic-utf8

#GIMP
sudo apt -y install gimp

#Rust
curl https://sh.rustup.rs -sSf | sh
sudo apt -y install lldb

#R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt update
sudo apt -y install r-base

#Haskell
sudo apt -y install haskell-platform
curl -sSL https://get.haskellstack.org/ | sh
echo 'export PATH="$PATH:~/.local/bin/stack"' >> ~/.zshrc

#netdiscover
sudo apt -y install netdiscover

#clipboardを使いやすくするやつ
sudo apt -y install xsel

#exa
cargo install exa

#Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "DroidSansMNerdFont" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

#delta
cargo install git-delta

#neovim用python3環境構築
pyenv install 3.7.8
pyenv virtualenv 3.7.8 nvim-python3
pyenv activate nvim-python3
pip install --upgrade pip
pip install neovim
pyenv deactivate

#Java
sudo apt -y install openjdk-8-jdk


#自分でやることを表示
echo "Tweaksからテーマのアプリケーション、カーソル、アイコンを選択してね"
echo "ターミナルにの色や透過度を設定してね"
echo "設定>オンラインアカウント>Googleを接続してGoogleDriveを同期させてね"
echo "https://karaas.hatenablog.jp/entry/2018/11/29/141733を参考にOnedriveも同期させてね"
echo "sudo visudoを実行して Defaults        badpass_message="あんたに権限をあげるわけないでしょ！このバカっ"を追記してね"
echo "Slack,Skypeのdebファイルをダウンロードしてきてインストールしてね"
echo "ロック画面の背景画像を変更してね"
echo "Android Studioをインストールしてね"
