CREATE TABLE department (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  ministryid INTEGER NOT NULL REFERENCES ministry(id)
);

COMMENT ON TABLE department IS '{"description": "Department names", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN department.id IS '{"description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN department.name IS '{"description": "Name of department", "summaryview": "true"}';

GRANT SELECT ON department TO ${serviceuser};
GRANT SELECT ON department TO ${readonlyuser};