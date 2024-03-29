# install 
sudo apt update
sudo apt install apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" 

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io


# check hello world
# sudo docker run hello-world

# 一般ユーザーがDockerをつかえるように
cat /etc/group | grep docker
sudo usermod -aG docker haruka #harukaはusername

# install docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
