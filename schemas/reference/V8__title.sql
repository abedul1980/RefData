CREATE TABLE title (
  id INTEGER NOT NULL PRIMARY KEY,
  title CHARACTER VARYING(20) NOT NULL UNIQUE
);

COMMENT ON TABLE title IS '{"description": "Person titles", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN title.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN title.title IS '{"label": "Title", "description": "Name of title", "summaryview": "true"}';

-- GRANTs
GRANT SELECT ON title TO ${anonuser};
GRANT SELECT ON title TO ${serviceuser};
GRANT SELECT ON title TO ${readonlyuser};