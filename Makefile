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
	./clean.sh
fclean: down
	./fclean.sh
volumes:
	@mkdir -p /home/$(USER)/data/wordpress
	@mkdir -p /home/$(USER)/data/mariadb


.PHONY: all re up down build create ps exec start restart stop clean fclean
