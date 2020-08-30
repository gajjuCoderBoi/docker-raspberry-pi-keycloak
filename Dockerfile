FROM balenalib/raspberry-pi-openjdk:8-stretch
MAINTAINER Mohammad Javed <ghazanfar9131@gmail.com>

WORKDIR /data

RUN apt update

RUN apt install wget

RUN wget https://downloads.jboss.org/keycloak/11.0.1/keycloak-11.0.1.tar.gz \
      && tar xvfp keycloak-11.0.1.tar.gz \
      && rm keycloak-11.0.1.tar.gz


RUN /data/keycloak-11.0.1/bin/add-user-keycloak.sh -r master -u admin -p admin

CMD ["/data/keycloak-11.0.1/bin/standalone.sh", "-b", "0.0.0.0"]

EXPOSE 8080 9990
