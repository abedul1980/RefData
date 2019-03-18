CREATE TABLE directorate (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  departmentid INTEGER NOT NULL REFERENCES department(id)
);

COMMENT ON TABLE directorate IS '{"description": "Directorate names", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN directorate.id IS '{"label": "Identifier","description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN directorate.name IS '{"label": "Name","description": "Name of directorate", "summaryview": "true"}';


GRANT SELECT ON directorate TO ${serviceuser};
GRANT SELECT ON directorate TO ${readonlyuser};