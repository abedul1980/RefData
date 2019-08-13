CREATE TABLE systemcheck (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(50),
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE systemcheck IS '{"label": "System Check", "description": "Checks performed against other computer systems.", "schemalastupdated": "07/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN systemcheck.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN systemcheck.name IS '{"label": "Name", "description": "The name of the computer systems checked.", "summaryview": "true"}';
COMMENT ON COLUMN systemcheck.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN systemcheck.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON systemcheck TO ${serviceuser};
GRANT SELECT ON systemcheck TO ${readonlyuser};
