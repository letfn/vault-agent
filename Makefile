SHELL := /bin/bash

menu:
	@perl -ne 'printf("%10s: %s\n","$$1","$$2") if m{^([\w+-]+):[^#]+#\s(.+)$$}' Makefile

build: # Build defn/vault-agent
	docker build -t defn/vault-agent:1.6.3 .

push: # Push defn/vault-agent
	docker push defn/vault-agent:1.6.3

bash: # Run bash shell with defn/vault-agent
	docker run --rm -ti --entrypoint bash defn/vault-agent:1.6.3

clean:
	docker-compose down --remove-orphans

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose rm -f -s

recreate:
	$(MAKE) clean
	$(MAKE) up

logs:
	docker-compose logs -f

