CREATE TABLE branch (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(100) NOT NULL,
  directorateid INTEGER NOT NULL REFERENCES directorate(id),
  code VARCHAR(6) NOT NULL
);

COMMENT ON TABLE branch IS '{"description": "Branch or Region names", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN branch.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN branch.name IS '{"label": "Name", "description": "Name of branch or region", "summaryview": "true", "aliases": "region"}';
COMMENT ON COLUMN branch.code IS '{"label": "Code", "description": "Code of branch or region", "summaryview": "true"}';

GRANT SELECT ON branch TO ${serviceuser};
GRANT SELECT ON branch TO ${readonlyuser};