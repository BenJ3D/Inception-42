# Makefile

# Définition des variables
DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

# Règle par défaut
all: up

# Règle pour lancer le docker-compose
up:
	mkdir -p ~/data/wordpress ~/data/mariadb
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

# Règle pour arrêter le docker-compose
down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

# Règle pour effacer toutes les images
clean:
	docker image prune -a --force

# Règle pour réinitialiser Docker
reset: stop
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --rmi all -v --remove-orphans
	rm -rf /home/bducrocq/data/wordpress /home/bducrocq/data/mariadb

# Règle pour arrêter et effacer toutes les images
stop:
	docker stop $$(docker ps -a -q) && docker rm $$(docker ps -a -q)
