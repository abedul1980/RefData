-- CHANGE name=init-gender.sql
CREATE TABLE gender (
  id INTEGER NOT NULL PRIMARY KEY,
  gender CHARACTER VARYING(20) NOT NULL UNIQUE
);

-- GRANTs
GRANT SELECT ON gender TO ${anonuser};
GRANT SELECT ON gender TO ${serviceuser};
GRANT SELECT ON gender TO ${readonlyuser};