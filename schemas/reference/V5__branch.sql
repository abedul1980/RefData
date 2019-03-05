CREATE TABLE branch (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  directorateid INTEGER NOT NULL REFERENCES directorate(id)
);


GRANT SELECT ON branch TO ${service_user};
GRANT SELECT ON branch TO ${readonly_user};