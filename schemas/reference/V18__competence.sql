CREATE TABLE competence (
  id int4 NOT NULL PRIMARY KEY,
  description text  NOT NULL,
  competence bool NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON competence TO ${anonuser};
GRANT SELECT ON competence TO ${serviceuser};
GRANT SELECT ON competence TO ${readonlyuser};

COMMENT ON TABLE competence IS '{"description": "Competence states", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN competence.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN competence.description IS '{"label": "description", "description": "description of competence or impairment", "summaryview": "true"}';
COMMENT ON COLUMN competence.competence IS '{"label": "Competence", "description": "Competence agreed", "summaryview": "true"}';
COMMENT ON COLUMN competence.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN competence.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';