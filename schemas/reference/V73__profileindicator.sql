CREATE TABLE profileindicator (
  id INT4 NOT NULL PRIMARY KEY,
  description VARCHAR(130) NOT NULL,
  ien BOOLEAN NOT NULL,
  ct BOOLEAN NOT NULL,
  person BOOLEAN NOT NULL,
  sea BOOLEAN NOT NULL,
  land BOOLEAN NOT NULL,
  rail BOOLEAN NOT NULL,
  air BOOLEAN NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE profileindicator IS '{"label": "Profile indicators", "description": "A list of the different profile indicators and thier use.", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN profileindicator.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN profileindicator.description IS '{"label": "Profile indicator", "description": "Description of profile indicator.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.ien IS '{"label": "Vaild for IENs?", "description": "The indicator is reportable via an IEN", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.ct IS '{"label": "Valid for CT?", "description": "The indicator is valid for CT", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.person IS '{"label": "Valid for People?", "description": "The indicator is valid when it is a person", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.sea IS '{"label": "Valid for Sea?", "description": "The indicator is valid when the method of travel is sea", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.land IS '{"label": "Valid for Land?", "description": "The indicator is valid when the method of travel is land", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.rail IS '{"label": "Valid for Rail?", "description": "The indicator is valid when the method of travel is rail", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.air IS '{"label": "Valid for Air?", "description": "The indicator is valid when the method of travel is air", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN profileindicator.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON profileindicator TO ${serviceuser};
GRANT SELECT ON profileindicator TO ${readonlyuser};