#!/bin/sh
sudo apt update

#curlのインストール
sudo apt install -y curl

#unzipのインストール
sudo apt install -y unzip

#Gitの設定
sudo apt install -y git
git config --global user.name Haruka0522
git config --global user.email harukapc1@gmail.com
git config --global color.ui "auto"

#bashからzshに変更
sudo apt install -y zsh
which zsh
chsh

#Vim
sudo apt update
sudo apt install -y vim-gtk
wget https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
mkdir ./.vim/
chmod +x ./installer.sh
./installer.sh ~/.vim/

#pythonのコードチェックツール
pip3 install -y flake8

#pythonの自動修正ツール
pip3 install -y autopep8

#dotfileの設定
cd ~
git clone https://github.com/Haruka0522/dotfiles/
cd dotfile
chmod +x ./setup.sh
./setup.sh
cd ~

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
sudo add-apt-repository ppa:snwh/pulp
sudo apt update
sudo apt install -y paper-cursor-theme
sudo apt install gnome-tweaks

#Google Chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install -y google-chrome-stable

#ChromeDriverのインストール
cd /tmp/
curl -O https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip
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
sudo apt install code

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

#GTOPのインストール
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y nodejs yarn build-essential
sudo apt install -y npm
sudo npm install gtop -g

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

#自分でやることを表示
echo "Tweaksからテーマのアプリケーション、カーソル、アイコンを選択してね"
echo "ターミナルにの色や透過度を設定してね"
echo "設定>オンラインアカウント>Googleを接続してGoogleDriveを同期させてね"
echo "https://karaas.hatenablog.jp/entry/2018/11/29/141733を参考にOnedriveも同期させてね"
echo "sudo visudoを実行して Defaults        badpass_message="あんたに権限をあげるわけないでしょ！このバカっ"を追記してね"
echo "Slack,Skypeのdebファイルをダウンロードしてきてインストールしてね"
echo "ロック画面の背景画像を変更してね"
