CREATE TABLE targetgroup (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(60) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON targetgroup TO ${anonuser};
GRANT SELECT ON targetgroup TO ${serviceuser};
GRANT SELECT ON targetgroup TO ${readonlyuser};

COMMENT ON TABLE targetgroup IS '{"description": "Target groups", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN targetgroup.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN targetgroup.type IS '{"label": "Target type", "description": "Target group type", "summaryview": "true"}';
COMMENT ON COLUMN targetgroup.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN targetgroup.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';