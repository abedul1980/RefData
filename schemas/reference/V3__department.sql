CREATE TABLE department (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  ministryid INTEGER NOT NULL REFERENCES ministry(id),
  code VARCHAR(8) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE department IS '{"label": "Department names", description": "Name of the ministerial departments", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN department.id IS '{"description": "Database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN department.name IS '{"description": "Name of department", "summaryview": "true"}';
COMMENT ON COLUMN department.code IS '{"description": "Code of department", "summaryview": "true"}';
COMMENT ON COLUMN department.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN department.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN department.ministryid IS '{"label": "Ministry ID", "description": "Link to ministry entity", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON department TO ${serviceuser};
GRANT SELECT ON department TO ${readonlyuser};
