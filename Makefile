DOCKER_IMAGE_VERSION=latest
NAME=raspberry-pi-keycloak
DOCKER_IMAGE_NAME=ghazanfar9131/${NAME}
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build:
	docker build -t $(DOCKER_IMAGE_TAGNAME) .

push:
	docker push $(DOCKER_IMAGE_NAME)

push-registry:
	docker tag ${DOCKER_IMAGE_NAME} localhost:5000/${NAME}
	docker push localhost:5000/${NAME}

