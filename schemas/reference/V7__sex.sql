CREATE TABLE sex (
  id CHARACTER VARYING(1) NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(20) NOT NULL UNIQUE,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON sex TO ${anonuser};
GRANT SELECT ON sex TO ${serviceuser};
GRANT SELECT ON sex TO ${readonlyuser};

COMMENT ON TABLE sex IS '{"description": "Sex reference list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN sex.name IS '{"label": "Name", "description": "Name of sex", "summaryview": "true"}';
COMMENT ON COLUMN sex.id IS '{"label": "Identifier", "description": "Character unique identity reference","summaryview": "true", "aliases": "sexcharacter"}';
COMMENT ON COLUMN sex.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN sex.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';