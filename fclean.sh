docker rmi $(docker images -q); 
sudo rm -rf /home/ben/data ; 
docker volume rm $(docker volume ls -q)