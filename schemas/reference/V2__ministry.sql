CREATE TABLE ministry (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(60) NOT NULL
);


GRANT SELECT ON ministry TO ${serviceuser};
GRANT SELECT ON ministry TO ${readonlyuser};


