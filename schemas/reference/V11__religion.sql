-- CHANGE name=init-religion-table
CREATE TABLE religion (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(50) NOT NULL
);

COMMENT ON TABLE religion IS '{"description": "Religions", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN religion.id IS '{"description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN religion.name IS '{"description": "Religion name", "summaryview": "true"}';

-- GRANTs
GRANT SELECT ON religion TO ${anonuser};
GRANT SELECT ON religion TO ${serviceuser};
GRANT SELECT ON religion TO ${readonlyuser};