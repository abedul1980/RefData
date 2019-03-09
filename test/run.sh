#!/usr/bin/env bash
set -x
export PGPASSWORD=${PGPASSWORD:-mysecretpassword}
export POSTGRES_DB=${POSTGRES_DB:-postgres}
export POSTGRES_USER=${POSTGRES_USER:-postgres}
export POSTGRES_SERVER=${POSTGRES_SERVER:-postgres_refdata}
export POSTGRES_PORT=${POSTGRES_PORT:-5432}

cd /test

echo "Checking if postgres is up and ready for connections"
i=0
pg_isready -d ${POSTGRES_DB} -h ${POSTGRES_SERVER} -p ${POSTGRES_PORT} -U ${POSTGRES_USER} -t 60
PG_EXIT=$?
while [[ "${i}" -lt "5" && ${PG_EXIT} != 0 ]]
do
    echo "waiting for Postgres to start, attempt: ${i}"
    sleep 5s
    if [[ "${i}" > 5 ]]
    then
        echo "Error: failed waiting for Postgres to start"
        exit 1
    fi
    ((i++))
    pg_isready -d ${POSTGRES_DB} -h ${POSTGRES_SERVER} -p ${POSTGRES_PORT} -U ${POSTGRES_USER} -t 60
    PG_EXIT=$?
done

echo "Checking if database exists"
if [[ "$( psql postgresql://${POSTGRES_USER}:${PGPASSWORD}@${POSTGRES_SERVER}:${POSTGRES_PORT}/${POSTGRES_DB} -c "SELECT 1 FROM pg_database WHERE datname='reference'" )" = '1' ]]
then
    echo "Database already exists"
else
    echo "Database does not exist creating"
    ./setup_db.sh
    if [[ "$?" != 0 ]]
    then
        echo "Setup DB Failed"
        exit 1
    fi
fi

echo "Converting CSVs into bulk load"
yasha -v /source/schemas/reference/bulkload/var.yaml /source/schemas/reference/bulkload/bulkload.j2 -o /source/schemas/reference/R__bulkload.sql
if [[ "$?" != 0 ]]
then
    echo "yasha conversion of csv's to bulk load file failed"
    exit 1
fi

echo "Starting migration of reference data"
flyway -configFiles=flyway_reference_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of reference db failed"
    exit 1
fi

echo "Removing bulkload file"
rm /source/schemas/reference/R__bulkload.sql

echo "Migrating governance database"
flyway -configFiles=flyway_governance_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of governance db failed"
    exit 1
fi

exit 0