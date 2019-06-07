CREATE TABLE tdacodes (
  id INT4 NOT NULL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  code VARCHAR(20) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE tdacodes IS '{"description": "Governance bodies", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN tdacodes.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN tdacodes.name IS '{"label": "Name", "description": "Name of governing body", "summaryview": "true"}';
COMMENT ON COLUMN tdacodes.code IS '{"label": "Code", "description": "Governing body code", "summaryview": "true"}';
COMMENT ON COLUMN tdacodes.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN tdacodes.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON tdacodes TO ${serviceuser};
GRANT SELECT ON tdacodes TO ${readonlyuser};
