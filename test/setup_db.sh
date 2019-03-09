#!/usr/bin/env bash
set -x

echo "Creating initial databases"
flyway -configFiles=flyway_init_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: initialising database"
    exit 1
fi

echo "Bootstrapping databases"
psql postgresql://${POSTGRES_USER}@${POSTGRES_SERVER}:${POSTGRES_PORT}/${POSTGRES_DB} < bootstrap.sql
if [[ "$?" != 0 ]]
then
    echo "Error: with bootstrapping database"
    exit 1
fi

exit 0