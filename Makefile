MAKE = make
DOCKER_COMPOSE = docker-compose --env-file=.env.local

.PHONY: build
build:
	$(DOCKER_COMPOSE) build

.PHONY: up
up:
	$(DOCKER_COMPOSE) up -d

.PHONY: down
down:
	$(DOCKER_COMPOSE) down

.PHONY: restart
restart:
	$(MAKE) down && $(MAKE) up
