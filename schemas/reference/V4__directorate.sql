CREATE TABLE directorate (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  departmentid INTEGER NOT NULL REFERENCES department(id),
  code VARCHAR(6) NOT NULL,
  validfrom date,
  validto date
);

COMMENT ON TABLE directorate IS '{"description": "Directorate names", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN directorate.id IS '{"label": "Identifier","description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN directorate.name IS '{"label": "Name","description": "Name of directorate", "summaryview": "true"}';
COMMENT ON COLUMN directorate.code IS '{"label": "Code","description": "Code of directorate", "summaryview": "true"}';
COMMENT ON COLUMN nationality.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN nationality.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';


GRANT SELECT ON directorate TO ${serviceuser};
GRANT SELECT ON directorate TO ${readonlyuser};