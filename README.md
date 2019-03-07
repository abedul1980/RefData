# Reference data governance service (BETA)

This repo is part of the RefData project workstream, for more details please see the [https://github.com/UKHomeOffice/RefDataBAU/wiki](wiki)


### Local Testing
Currently this repository can be tested using local docker, but first you need to install the Python yasha module which is 
required in order to include the bulk load files. 

To do this run

```bash
pip install yasha
```

To build the database in debug mode in order to have the docker instance persist run

```bash
DEBUG=true test/test.sh
```


To clean up the environment run
```bash
docker stop refdata
docker rm refdata
```

The postgres instance for testing is exposed on port 5433 to avoid conflict with other local running instances.



### Database schema design

Each Table must contain a comment in JSON format containing the following entities:
* description
* schemalastupdated
* dataversion

Each Column must contain a comment in JSON format containing the following entities:
* description
* summaryview

Optional entities for column comments:
* minimumlength
* maximumlength
* minimumvalue
* maximumvalue

