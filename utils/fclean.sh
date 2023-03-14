docker rmi $(docker images -q) --force; 
sudo rm -rf /home/bducrocq/data ; 
docker volume rm $(docker volume ls -q) --force;