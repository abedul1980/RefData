CREATE TABLE targetmode (
  id INT4 NOT NULL PRIMARY KEY,
  mode VARCHAR(60) NOT NULL,
  ien BOOL NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE targetmode IS '{"label": "Target Modes", "description": "A list of target modes.", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN targetmode.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN targetmode.mode IS '{"label": "Target mode", "description": "The targeting mode type.", "summaryview": "true"}';
COMMENT ON COLUMN targetmode.ien IS '{"label": "IEN enabled", "description": "Valid for IEN", "summaryview": "false"}';
COMMENT ON COLUMN targetmode.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN targetmode.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON targetmode TO ${anonuser};
GRANT SELECT ON targetmode TO ${serviceuser};
GRANT SELECT ON targetmode TO ${readonlyuser};
