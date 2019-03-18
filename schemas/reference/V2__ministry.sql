CREATE TABLE ministry (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(60) NOT NULL
);

COMMENT ON TABLE ministry IS '{"description": "Government ministries", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN ministry.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN ministry.name IS '{"label": "Name", "description": "Name of branch or region", "summaryview": "true"}';

GRANT SELECT ON ministry TO ${serviceuser};
GRANT SELECT ON ministry TO ${readonlyuser};


