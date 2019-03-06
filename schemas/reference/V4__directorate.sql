CREATE TABLE directorate (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  departmentid INTEGER NOT NULL REFERENCES department(id)
);


GRANT SELECT ON directorate TO ${serviceuser};
GRANT SELECT ON directorate TO ${readonlyuser};