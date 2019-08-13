CREATE TABLE legalgateway (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(40),
  description VARCHAR(100),
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE legalgateway IS '{"label": "Legal Gateway", "description": "Legal gateways to which inteligence can be disseminated.", "schemalastupdated": "13/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN legalgateway.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN legalgateway.name IS '{"label": "Name", "description": "The name of the legal gateway.", "summaryview": "true"}';
COMMENT ON COLUMN legalgateway.description IS '{"label": "Description", "description": "Description of the legal gateway", "summaryview": "false"}';
COMMENT ON COLUMN legalgateway.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN legalgateway.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON legalgateway TO ${serviceuser};
GRANT SELECT ON legalgateway TO ${readonlyuser};
