CREATE TABLE ministry (
  ministryid INTEGER NOT NULL PRIMARY KEY,
  ministryname CHARACTER VARYING(60) NOT NULL
);


GRANT SELECT ON ministry TO ${service_user};
GRANT SELECT ON ministry TO ${readonly_user};


COPY ministry FROM STDIN CSV HEADER;
"ministryid","ministryname"
1,"Home Office"
\.