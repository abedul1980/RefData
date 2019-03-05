#!/usr/bin/env bash
set -x
export PGPASSWORD=${PGPASSWORD:-mysecretpassword}
DEBUG=${DEBUG:-false}
export DEBUG=$(echo ${DEBUG} | tr '[:upper:]' '[:lower:]')

if [[ $(awk -F'/' '{print $(NF)}' <<< $(pwd)) == "test" ]];
then
  echo "Running test scripts"
else
  if [[ ! -d "test" ]]
  then
    echo "Test directory missing"
    exit 1
  else
    cd test
  fi
fi

docker run -e POSTGRES_PASSWORD=${PGPASSWORD} -d -p 5432:5432 --name postgres postgres:10-alpine
if [[ "$?" != 0 ]]
then
    echo "Error: running docker"
    exit 1
fi

i=0
pg_isready -d postgres -h localhost -p 5432 -U postgres -t 60
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
    pg_isready -d postgres -h localhost -p 5432 -U postgres -t 60
    PG_EXIT=$?
done

flyway -configFiles=flyway_init_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: initialising database"
    exit 1
fi

psql postgresql://postgres@localhost:5432/postgres < bootstrap.sql
if [[ "$?" != 0 ]]
then
    echo "Error: with bootstrapping database"
    exit 1
fi

flyway -configFiles=flyway_governance_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of governance db failed"
    exit 1
fi

yasha -v ../schemas/reference/bulkload/var.yaml ../schemas/reference/bulkload/bulkload.j2 -o ../schemas/reference/R__bulkload.sql
if [[ "$?" != 0 ]]
then
    echo "yasha conversion of csv's to bulk load file failed"
    exit 1
fi

flyway -configFiles=flyway_reference_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of reference db failed"
    exit 1
fi

if [[ "${DEBUG}" == "f" || "${DEBUG}" == "false" ]]
then
    rm ../schemas/reference/R_bulkload.sql
fi

if [[ "${DEBUG}" == "f" || "${DEBUG}" == "false" ]]
then
    docker stop postgres
    docker rm postgres
fi
