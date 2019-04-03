CREATE TABLE "crewrole" (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL,
  description varchar(60),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON crewrole TO ${anonuser};
GRANT SELECT ON crewrole TO ${serviceuser};
GRANT SELECT ON crewrole TO ${readonlyuser};

COMMENT ON TABLE crewrole IS '{"description": "Command list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN crewrole.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN crewrole.name IS '{"label": "Name", "description": "Crew position name", "summaryview": "true"}';
COMMENT ON COLUMN crewrole.description IS '{"label": "Description", "description": "description of role", "summaryview": "true"}';
COMMENT ON COLUMN crewrole.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN crewrole.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';