CREATE TABLE detectionoutcome (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(40),
  counterterrorism boolean,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE detectionoutcome IS '{"label": "Detection Outcome", "description": "The outcome of a detection.", "schemalastupdated": "07/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN detectionoutcome.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN detectionoutcome.name IS '{"label": "Name", "description": "The name of the outcome.", "summaryview": "true"}';
COMMENT ON COLUMN detectionoutcome.counterterrorism IS '{"label": "Counter Terrorism?", "description": "Was this related to CT activity?", "summaryview": "false"}';
COMMENT ON COLUMN detectionoutcome.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN detectionoutcome.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON detectionoutcome TO ${serviceuser};
GRANT SELECT ON detectionoutcome TO ${readonlyuser};
