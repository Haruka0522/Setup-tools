sudo apt update
sudo apt upgrade
# 日本時間
sudo timedatectl set-timezone Asia/Tokyo
# 日本語
sudo localedef -f UTF-8 -i en_US en_US
sudo localedef -f UTF-8 -i ja_JP ja_JP
sudo localectl set-locale LANG=en_US.utf8
