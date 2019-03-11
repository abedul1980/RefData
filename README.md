# Reference data governance service (BETA)

This repo is part of the RefData project workstream, for more details please see the [https://github.com/UKHomeOffice/RefDataBAU/wiki](wiki)


### Local Testing
This repo has a docker-compose file which allows you to setup a local testing environment. As part of the tests it will run the following images:
* keycloak on port 8080 with user admin and password secret
* postgres for keycloak (internal)
* postgres for governance and reference data on port 5433
* postgrest to expose the reference data API on port 3001
* postgrest to expose the governance data API on port 3002

See the docker-compose.yml for passwords/secrets which allow access to keycloak and postgres.

Postgrest can be accessed via postman and it exports a full OpenAPI 3.0 json spec at '/'. You do however, need to supply an OAUTH token in order to see the protected tables.
To see the full reference data schema, ensure you setup a user in keycloak RedData realm, then authenticate with the refdata-ui client-id. 
To see the governance data schema use the refdata-api client-id and client-secret to create the bearer token.

Both postgrest schema's can be loaded in to Postman as collections.



### Database schema design

Each Table must contain a comment in JSON format containing the following entities:
* description
* schemalastupdated
* dataversion

Each Column must contain a comment in JSON format containing the following entities:
* description
* summaryview

Optional entities for column comments:
* aliases (comma separated list)
* minimumlength
* maximumlength
* minimumvalue
* maximumvalue

