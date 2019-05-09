CREATE TABLE clearancetype (
  id uuid NOT NULL PRIMARY KEY,
  name character varying(60) NOT NULL,
  description text,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON clearancetype TO ${anonuser};
GRANT SELECT ON clearancetype TO ${serviceuser};

COMMENT ON TABLE clearancetype IS '{"description": "Security clearance types", "schemalastupdated": "02/05/2019", "dataversion": 1}';
COMMENT ON COLUMN clearancetype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN clearancetype.name IS '{"label": "Name", "description": "Name / Level of security clearance", "summaryview": "true"}';
COMMENT ON COLUMN clearancetype.description IS '{"label": "Description", "description": "Description of security clearance", "summaryview": "true"}';
COMMENT ON COLUMN clearancetype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN clearancetype.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
