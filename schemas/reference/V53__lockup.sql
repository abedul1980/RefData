CREATE TABLE lockup (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(50) NOT NULL,
  description text NOT NULL,
  lockuptypeid int4 NOT NULL REFERENCES lockuptype(id),
  locationid int4 NOT NULL REFERENCES location(id),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON lockup TO ${serviceuser};
GRANT SELECT ON lockup TO ${readonlyuser};

COMMENT ON TABLE lockup IS '{"description": "Seizure lockup types", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN lockup.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN lockup.name IS '{"label": "Name", "description": "Name of lockup", "summaryview": "true"}';
COMMENT ON COLUMN lockup.description IS '{"label": "Description", "description": "Description of lockup", "summaryview": "true"}';
COMMENT ON COLUMN lockup.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN lockup.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN lockup.lockuptypeid IS '{"label": "Lockup type ID", "description": "Link to lockup type entity", "summaryview" : "false"}';
COMMENT ON COLUMN lockup.locationid IS '{"label": "Location ID", "description": "Link to location entity", "summaryview" : "false"}';
