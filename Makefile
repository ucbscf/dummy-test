NAME = ucbscf/dummy-test
DOCKER_COMPOSE = docker compose
DOCKER_COMPOSE_FILE = /etc/docker/SITE/dummy-test/docker-compose.yml

all:
	docker build -t $(NAME):latest .

pull:
	GIT_SSH_COMMAND='ssh -i ~/.ssh/git-$(NAME) -o preferredauthentications=publickey' git pull

push:
	docker image push $(NAME):latest
