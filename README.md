# Reference data governance service (BETA)

This repo is part of the RefData project workstream, for more details please see the [https://github.com/UKHomeOffice/RefDataBAU/wiki](wiki)

## Database schema design

Each Table must contain a comment in JSON format containing the following entities:

* description
* schemalastupdated
* dataversion

Each Column must contain a comment in JSON format containing the following entities:

* label
* description
* summaryview

Optional entities for column comments:

* aliases (comma separated list)
* minimumlength
* maximumlength
* minimumvalue
* maximumvalue

## Local Deployment Testing

1. Clone this repo
2. Switch into the cloned directory and then create a .env file containing the full path to the cloned repo. e.g:

```bash
PUBLIC_REFDATA_FLYWAY=/Users/XXX/GIT/cop/public_refdata_flyway
```

3. Run the command to start docker

```bash
docker-compose up -d
docker logs public_refdata_flyway -f
```

Upon completion the database will be up and accessible via port tcp/5433. The docker compose file contains the different users and secrets which allow connecting to the different roles. An example to connect as the main root owner (not advised for service accounts which should use the authenticator user and switch role):

```bash
psql postgres://ownerreference:mysecretpassword@localhost:5433/reference
set search_path reference
```

### Note

To clean up the running instance and take it down run:

```bash
docker-compose rm -vs
```
