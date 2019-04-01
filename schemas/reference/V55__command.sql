CREATE TABLE command (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(100)  NOT NULL,
  divisionid int4 NOT NULL REFERENCES division(id),
  code varchar(8) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON command TO ${serviceuser};
GRANT SELECT ON command TO ${readonlyuser};

COMMENT ON TABLE command IS '{"description": "Command list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN command.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN command.name IS '{"label": "Name", "description": "Name of command", "summaryview": "true"}';
COMMENT ON COLUMN command.code IS '{"label": "Code", "description": "Code of command", "summaryview": "true"}';
COMMENT ON COLUMN nationality.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN nationality.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
