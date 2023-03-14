docker rmi mariadb; 
sudo rm -rf /home/bducrocq/datamariadb; 
docker volume rm $(docker volume ls -q)