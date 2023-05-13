MAKE = make
DOCKER_COMPOSE = docker-compose --env-file=.env.local
DOCKER_PHP = docker-compose run -u www-data --rm php
DOCKER_PHP_RUN = $(DOCKER_PHP) php

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

.PHONY: cache
cache:
	$(DOCKER_PHP) rm -rf var/cache && $(DOCKER_PHP_RUN) -d memory_limit=512M bin/console cache:warmup
