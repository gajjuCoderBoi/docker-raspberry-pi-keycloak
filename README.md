# Keycloak for Raspberry Pi

[![dockeri.co](https://dockeri.co/image/ghazanfar9131/raspberry-pi-keycloak)](https://hub.docker.com/repository/docker/ghazanfar9131/raspberry-pi-keycloak)

This Docker image provides [Keycloak](http://keycloak.jboss.org/)

### Package included

- balenalib/raspberry-pi-openjdk:8-stretch
- keycloak 11.0.1 Standalone

### Build Details
- [Source Repository](https://github.com/gajjuCoderBoi/docker-rpi-keycloak)
- [Dockerfile](https://github.com/gajjuCoderBoi/docker-rpi-keycloak/blob/master/Dockerfile)
- [DockerHub] (https://hub.docker.com/repository/docker/ghazanfar9131/raspberry-pi-keycloak)


#### Build the Docker Image
```bash
make build
```

#### Push the Docker Image to the Docker Hub
* First use a `docker login` with username, password and email address
* Second push the Docker Image to the official Docker Hub

```bash
make push
```

#### Push the Docker Image to the local Docker registry for raspberry pi. 

```bash
make push-registry
```
on raspberry pi
```
docker pull your-registry-address:5000/raspberry-pi-keycloak
```

### Run Details
```
docker run --name keycloak --privileged -d -p 8180:8080 -p 9990:9990 ghazanfar9131/raspberry-pi-keycloak
```

![Keycloak Welcome ScreeShot](https://raw.githubusercontent.com/gajjuCoderBoi/docker-rpi-keycloak/master/imagens/keycloak_welcomepage.png)

### Login

- Open http://ADDRESS:8180 in browser
- Login to Administration Console as 'admin:admin'

forked from ruifigueiredo docker keycloak
