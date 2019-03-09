FROM boxfuse/flyway:5.2.4-alpine

RUN apk --no-cache add --update postgresql-client python py-pip ca-certificates gettext curl git && \
    addgroup -S java && \
    mkdir /source && \
    adduser -D -G java -u 1000 -s /bin/bash -h /home/java java && \
    chown -R java:java /home/java /flyway /source && \
    pip install --upgrade pip && \
    pip install yasha

ADD . /test/

RUN chmod +x /test/*.sh

USER 1000

WORKDIR /test/
ENTRYPOINT ./run.sh