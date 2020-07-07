ONESHELL:
SHELL = /bin/bash

build:	build-level1-project-components build-level1-project-tools


build-level1-project-components:
	DOCKER_BUILDKIT=1 docker-compose build

build-level1-project-tools:
	DOCKER_BUILDKIT=1 docker build --tag level1-project .

	
run:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock level1-project

cbuild:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock level1-project build

up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker rm -f $(docker ps -qa)

logs:
	docker-compose logs -f
