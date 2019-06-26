FROM quay.io/ukhomeofficedigital/docker-flyway:latest

COPY --chown=1000 docker/ /docker/
COPY --chown=1000 schemas /schemas/

RUN chmod +x /docker/*.sh

WORKDIR /docker/
