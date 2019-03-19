CREATE TABLE targetcat (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(40),
  oar bool NOT NULL
);

-- GRANTs
GRANT SELECT ON targetcat TO ${anonuser};
GRANT SELECT ON targetcat TO ${serviceuser};
GRANT SELECT ON targetcat TO ${readonlyuser};

COMMENT ON TABLE targetcat IS '{"description": "Targeting types", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN targetcat.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN targetcat.type IS '{"label": "Target type", "description": "Type of target", "summaryview": "true"}';
COMMENT ON COLUMN targetcat.oar IS '{"label": "OAR", "description": "Valid for Operational activities reporting", "summaryview": "true"}';