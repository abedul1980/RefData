CREATE TABLE branch (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  directorateid INTEGER NOT NULL REFERENCES directorate(id)
);


GRANT SELECT ON branch TO ${serviceuser};
GRANT SELECT ON branch TO ${readonlyuser};