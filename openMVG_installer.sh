# Ubuntuで動作確認済み
sudo apt install -y libpng-dev libjpeg-dev libtiff-dev libxxf86vm1 libxxf86vm-dev libxi-dev libxrandr-dev
git clone --recursive https://github.com/openMVG/openMVG.git
cd openMVG
cd ..
mkdir openMVG_Build
cd openMVG_Build
cmake -DCMAKE_BUILD_TYPE=RELEASE . ../openMVG/src/
make -j4
