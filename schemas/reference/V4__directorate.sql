CREATE TABLE directorate (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  departmentid INTEGER NOT NULL REFERENCES department(id),
  code VARCHAR(6) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE directorate IS '{"description": "Directorate names", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN directorate.id IS '{"label": "Identifier","description": "Database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN directorate.name IS '{"label": "Name","description": "Name of directorate", "summaryview": "true"}';
COMMENT ON COLUMN directorate.code IS '{"label": "Code","description": "Code of directorate", "summaryview": "true"}';
COMMENT ON COLUMN directorate.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN directorate.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN directorate.departmentid IS '{"label": "Department ID", "description": "Link to department entity", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON directorate TO ${serviceuser};
GRANT SELECT ON directorate TO ${readonlyuser};
