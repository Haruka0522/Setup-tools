# Ubuntuで動作確認済み
sudo apt install -y libpng-dev libjpeg-dev libtiff-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev
git clone --recursive https://github.com/openMVG/openMVG.git
cd openMVG
cd ..
mkdir openMVG_Build
cd openMVG_Build
cmake -DCMAKE_BUILD_TYPE=RELEASE . ../openMVG/src/
make -j4

# Qtを含めてビルドしたいときはQtをaptではなく公式のインストーラーで入れて
# cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_PREFIX_PATH=~/Qt/5.15.0/gcc_64 . ../openMVG/src
# を実行する
