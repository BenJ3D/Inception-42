NAME		= inception

COMPOSE = docker-compose -f srcs/docker-compose.yml -p $(NAME)

all:		up

re:			fclean all

up:			build
				$(COMPOSE) up --detach

down:
				$(COMPOSE) down

build:	volumes
				$(COMPOSE) build --parallel

create:	build
			  $(COMPOSE) create

ps:
			  $(COMPOSE) ps --all

exec:
ifeq '$(CONTAINER)' ''
	@echo "Usage: CONTAINER=<CONTAINER_NAME> make exec"
else
	$(COMPOSE) exec $(CONTAINER) /bin/bash
endif

start:
	$(COMPOSE) start
restart:
	$(COMPOSE) restart
stop:
	$(COMPOSE) stop

clean: down
	./utils/clean.sh

fclean: down
	./utils/fclean.sh

volumes:
	@mkdir -p /home/bducrocq/data/wordpress
	@mkdir -p /home/bducrocq/data/mariadb

.PHONY: all re up down build create ps exec start restart stop clean fclean

