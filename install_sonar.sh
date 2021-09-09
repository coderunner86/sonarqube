#install docker
curl -fsSL http://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudp apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce 
sudo usermod -aG docker ubuntu 
sudo systemctl status docker

#install docker compose
sudp curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

#install sonar
sudo sysctl -w vm.max_map_count=262144
mkdir sonar
wget https://raw.githubusercontent.com/awstechguide/devops/master/docker-compose.yml 
sudo docker-compose up 
docker ps