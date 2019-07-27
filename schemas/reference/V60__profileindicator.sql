CREATE TABLE profileindicator (
  id INTEGER NOT NULL PRIMARY KEY, 
  indicator VARCHAR(100) NOT NULL,
  ien BOOLEAN NOT NULL,
  ct BOOLEAN NOT NULL,
  person BOOLEAN NOT NULL,
  maritime BOOLEAN NOT NULL,
  land BOOLEAN NOT NULL,
  rail BOOLEAN NOT NULL,
  air BOOLEAN NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE profileindicator IS '{"label": "Selection Indicator", "description": "A list of reasons for conducting a search on a particular vehicle.", "schemalastupdated": "15/07/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN profileindicator.id IS '{"label": "Identifier", "description": "Database unique identity record.", "summaryview": "false"}';
COMMENT ON COLUMN profileindicator.indicator IS '{"label": "Indicator", "description": "Reason for selecting the vehicle to search.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.ien IS '{"label": "IEN", "description": "For use on IEN forms.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.ct IS '{"label": "CT", "description": "For use on CT forms.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.person IS '{"label": "Person", "description": "Person selection tag.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.maritime IS '{"label": "Maritime", "description": "Maritime selection tag.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.land IS '{"label": "Land", "description": "Land selection tag.", "summaryview": "ture"}';
COMMENT ON COLUMN profileindicator.rail IS '{"label": "Rail", "description": "Rail selection tag.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.air IS '{"label": "Air", "description": "Air selection tag.", "summaryview": "true"}';
COMMENT ON COLUMN profileindicator.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN profileindicator.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON profileindicator TO ${serviceuser};
GRANT SELECT ON profileindicator TO ${readonlyuser};
