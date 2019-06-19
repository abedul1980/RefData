CREATE TABLE ministry (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(60) NOT NULL,
  code VARCHAR(8) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE ministry IS '{"label": "Government ministries", description": "Table of ministries found in the government", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN ministry.id IS '{"label": "Identifier", "description": "Database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN ministry.name IS '{"label": "Name", "description": "Name of branch or region", "summaryview": "true"}';
COMMENT ON COLUMN ministry.code IS '{"label": "Code", "description": "Code of branch or region", "summaryview": "true"}';
COMMENT ON COLUMN ministry.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN ministry.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';


-- GRANTs
GRANT SELECT ON ministry TO ${serviceuser};
GRANT SELECT ON ministry TO ${readonlyuser};
