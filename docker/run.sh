#!/usr/bin/env bash

export POSTGRES_DB=${POSTGRES_DB:-postgres}
export POSTGRES_SERVER=${POSTGRES_SERVER:-postgres_refdata}
export POSTGRES_PORT=${POSTGRES_PORT:-5432}
export POSTGRES_OPTIONS=${POSTGRES_OPTIONS:-}
export URL="postgresql://${POSTGRES_SERVER}:${POSTGRES_PORT}/${POSTGRES_DB}${POSTGRES_OPTIONS}"
export FLYWAY_URL="jdbc:${URL}"
export FLYWAY_INIT_USER=${FLYWAY_INIT_USER:-postgres}
export FLYWAY_INIT_PASSWORD=${FLYWAY_INIT_PASSWORD:-mysecretpassword}
export FLYWAY_PLACEHOLDERS_MASTERUSER=${FLYWAY_INIT_USER}
export FLYWAY_PLACEHOLDERS_REFERENCEDBNAME=${FLYWAY_PLACEHOLDERS_REFERENCE_DB_NAME:-reference}
export FLYWAY_PLACEHOLDERS_REFERENCEOWNERNAME=${FLYWAY_PLACEHOLDERS_REFERENCE_OWNER_NAME:-ownerreference}
export FLYWAY_PLACEHOLDERS_REFERENCEOWNERPASSWORD=${FLYWAY_PLACEHOLDERS_REFERENCE_OWNER_PASSWORD:-mysecretpassword}
export FLYWAY_PLACEHOLDERS_REFERENCESCHEMA=${FLYWAY_PLACEHOLDERS_REFERENCE_SCHEMA:-reference}
export FLYWAY_PLACEHOLDERS_GOVERNANCEOWNERNAME=${FLYWAY_PLACEHOLDERS_GOVERNANCE_OWNER_NAME:-ownergovernance}
export FLYWAY_PLACEHOLDERS_GOVERNANCEOWNERPASSWORD=${FLYWAY_PLACEHOLDERS_GOVERNANCE_OWNER_PASSWORD:-mysecretpassword}
export FLYWAY_PLACEHOLDERS_GOVERNANCESCHEMA=${FLYWAY_PLACEHOLDERS_GOVERNANCE_SCHEMA:-governance}

export BASEPATH="${PWD}"
echo "Running from base path: ${BASEPATH}"

echo "Checking if postgres is up and ready for connections"
export PGPASSWORD=${FLYWAY_INIT_PASSWORD}
i=0
pg_isready -d ${URL} -U ${FLYWAY_INIT_USER} -t 60
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
    pg_isready -d ${URL} -U ${FLYWAY_INIT_USER} -t 60
    PG_EXIT=$?
done

echo "Creating initial databases"
export FLYWAY_USER=${FLYWAY_INIT_USER}
export FLYWAY_PASSWORD=${PGPASSWORD}


echo "Checking if database exists"
STATUS=$( psql postgresql://${FLYWAY_INIT_USER}@${POSTGRES_SERVER}:${POSTGRES_PORT}/${POSTGRES_DB}${POSTGRES_OPTIONS} -tc "SELECT 1 FROM pg_database WHERE datname='reference'" | sed -e 's/^[ \t]*//')
if [[ "${STATUS}" == "1" ]]
then
    echo "Database already exists"
else
    echo "Database does not exist creating - Bootstrapping databases"
    export FLYWAY_LOCATIONS="filesystem:${BASEPATH}/schemas/init"
    flyway -configFiles=${BASEPATH}/docker/flyway_init_docker.conf migrate
    if [[ "$?" != 0 ]]
    then
        echo "Error: initialising database"
        exit 1
    fi
    cd ${BASEPATH}/docker/
    yasha bootstrap.j2 -o /tmp/bootstrap.sql
    psql postgresql://${FLYWAY_INIT_USER}@${POSTGRES_SERVER}:${POSTGRES_PORT}/${POSTGRES_DB}${POSTGRES_OPTIONS} < /tmp/bootstrap.sql
    if [[ "$?" != 0 ]]
    then
        echo "Error: with bootstrapping database"
        exit 1
    fi
fi

echo "Converting CSVs into bulk load"
yasha -v ${BASEPATH}/schemas/reference/bulkload/var.yaml ${BASEPATH}/schemas/reference/bulkload/bulkload.j2 -o ${BASEPATH}/schemas/reference/R__bulkload.sql
if [[ "$?" != 0 ]]
then
    echo "yasha conversion of csv's to bulk load file failed"
    exit 1
fi

echo "Starting migration of reference data"
export FLYWAY_URL="jdbc:postgresql://${POSTGRES_SERVER}:${POSTGRES_PORT}/${FLYWAY_PLACEHOLDERS_REFERENCE_DB_NAME}${POSTGRES_OPTIONS}"
export FLYWAY_USER=${FLYWAY_PLACEHOLDERS_REFERENCE_OWNER_NAME}
export FLYWAY_PASSWORD=${FLYWAY_PLACEHOLDERS_REFERENCE_OWNER_PASSWORD}
export FLYWAY_SCHEMAS=${FLYWAY_PLACEHOLDERS_REFERENCE_SCHEMA}
export FLYWAY_PLACEHOLDERS_SCHEMA=${FLYWAY_PLACEHOLDERS_REFERENCE_SCHEMA}

export FLYWAY_PLACEHOLDERS_AUTHENTICATORUSER=${FLYWAY_PLACEHOLDERS_REFERENCE_AUTHENTICATOR_USER:-authenticatorreference}
export FLYWAY_PLACEHOLDERS_AUTHENTICATORPASSWORD=${FLYWAY_PLACEHOLDERS_REFERENCE_AUTHENTICATOR_PASSWORD:-auth1234}
export FLYWAY_PLACEHOLDERS_ANONUSER=${FLYWAY_PLACEHOLDERS_REFERENCE_ANON_USER:-webanon}
export FLYWAY_PLACEHOLDERS_SERVICEUSER=${FLYWAY_PLACEHOLDERS_REFERENCE_SERVICE_USER:-servicereferance}
export FLYWAY_PLACEHOLDERS_READONLYUSER=${FLYWAY_PLACEHOLDERS_REFERENCE_READONLY_USER:-readonlyreferance}
export FLYWAY_LOCATIONS="filesystem:${BASEPATH}/schemas/reference"

flyway -configFiles=${BASEPATH}/docker/flyway_reference_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of reference db failed"
    exit 1
fi

echo "Migrating governance database"
export FLYWAY_URL="jdbc:postgresql://${POSTGRES_SERVER}:${POSTGRES_PORT}/${FLYWAY_PLACEHOLDERS_REFERENCE_DB_NAME}${POSTGRES_OPTIONS}"
export FLYWAY_USER=${FLYWAY_PLACEHOLDERS_GOVERNANCE_OWNER_NAME}
export FLYWAY_PASSWORD=${FLYWAY_PLACEHOLDERS_GOVERNANCE_OWNER_PASSWORD}
export FLYWAY_SCHEMAS=${FLYWAY_PLACEHOLDERS_GOVERNANCE_SCHEMA}
export FLYWAY_PLACEHOLDERS_SCHEMA=${FLYWAY_PLACEHOLDERS_GOVERNANCE_SCHEMA}

export FLYWAY_PLACEHOLDERS_AUTHENTICATORUSER=${FLYWAY_PLACEHOLDERS_GOVERNANCE_AUTHENTICATOR_USER:-authenticatorgovernance}
export FLYWAY_PLACEHOLDERS_AUTHENTICATORPASSWORD=${FLYWAY_PLACEHOLDERS_GOVERNANCE_AUTHENTICATOR_PASSWORD:-auth1234}
export FLYWAY_PLACEHOLDERS_ANONUSER=${FLYWAY_PLACEHOLDERS_GOVERNANCE_ANON_USER:-webanongovernance}
export FLYWAY_PLACEHOLDERS_SERVICEUSER=${FLYWAY_PLACEHOLDERS_GOVERNANCE_SERVICE_USER:-servicegovernance}
export FLYWAY_PLACEHOLDERS_READONLYUSER=${FLYWAY_PLACEHOLDERS_GOVERNANCE_READONLY_USER:-readonlygovernance}
export FLYWAY_LOCATIONS="filesystem:${BASEPATH}/schemas/governance"

flyway -configFiles=${BASEPATH}/docker/flyway_governance_docker.conf migrate
if [[ "$?" != 0 ]]
then
    echo "Error: migration of governance db failed"
    exit 1
fi

exit 0
