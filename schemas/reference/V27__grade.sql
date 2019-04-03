CREATE TABLE grade (
  id uuid NOT NULL PRIMARY KEY,
  name varchar(60) NOT NULL,
  parentgradetypeid uuid REFERENCES grade(id),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON grade TO ${anonuser};
GRANT SELECT ON grade TO ${serviceuser};
GRANT SELECT ON grade TO ${readonlyuser};

COMMENT ON TABLE grade IS '{"description": "Civil service grades", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN grade.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN grade.name IS '{"label": "Grade code", "description": "Civil service grade code", "summaryview": "true"}';
COMMENT ON COLUMN grade.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN grade.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';