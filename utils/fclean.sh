docker rmi $(docker images -q); 
sudo rm -rf /home/$USER/data ; 
docker volume rm $(docker volume ls -q)