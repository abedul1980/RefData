CREATE TABLE department (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  ministryid INTEGER NOT NULL REFERENCES ministry(id)
);


GRANT SELECT ON department TO ${service_user};
GRANT SELECT ON department TO ${readonly_user};