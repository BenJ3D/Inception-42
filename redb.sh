docker rmi mariadb; 
sudo rm -rf /home/ben/data/mariadb; 
docker volume rm $(docker volume ls -q)