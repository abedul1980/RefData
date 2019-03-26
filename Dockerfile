FROM digitalpatterns/docker-flyway

COPY --chown=1000 docker/ /docker/
COPY --chown=1000 schemas /schemas/

RUN chmod +x /docker/*.sh

USER 1000

WORKDIR /docker/

ENTRYPOINT ["./run.sh"]
