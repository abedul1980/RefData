CREATE TABLE assalttypes (
  id INT4 NOT NULL PRIMARY KEY,
  label VARCHAR(15) NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE assalttypes IS '{"label": "Assalt types", "description": "Types of assalt.", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN assalttypes.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN assalttypes.label IS '{"label": "Assalt", "description": "Description of assalt type.", "summaryview": "true"}';
COMMENT ON COLUMN assalttypes.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN assalttypes.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON assalttypes TO ${serviceuser};
GRANT SELECT ON assalttypes TO ${readonlyuser};