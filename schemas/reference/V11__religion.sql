-- CHANGE name=init-religion-table
CREATE TABLE religion (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(50) NOT NULL,
  validfrom date,
  validto date
);

COMMENT ON TABLE religion IS '{"description": "Religions", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN religion.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN religion.name IS '{"label": "Name", "description": "Religion name", "summaryview": "true"}';
COMMENT ON COLUMN religion.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN religion.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON religion TO ${anonuser};
GRANT SELECT ON religion TO ${serviceuser};
GRANT SELECT ON religion TO ${readonlyuser};