-- CHANGE name=init-marital.sql
CREATE TABLE marital (
  id INTEGER NOT NULL PRIMARY KEY,
  code CHARACTER VARYING(1) NOT NULL UNIQUE,
  description CHARACTER VARYING(100)
);

COMMENT ON TABLE marital IS '{"description": "Marital statuses", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN marital.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN marital.code IS '{"label": "Short Code", "description": "Short code", "summaryview": "true"}';
COMMENT ON COLUMN marital.description IS '{"label": "Description", "description": "Marital status description", "summaryview": "true"}';

-- GRANTs
GRANT SELECT ON marital TO ${anonuser};
GRANT SELECT ON marital TO ${serviceuser};
GRANT SELECT ON marital TO ${readonlyuser};