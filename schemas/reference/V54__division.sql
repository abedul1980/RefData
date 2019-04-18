CREATE TABLE division (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(100) NOT NULL,
  branchid int4 NOT NULL REFERENCES branch(id),
  code varchar(8) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON division TO ${serviceuser};
GRANT SELECT ON division TO ${readonlyuser};

COMMENT ON TABLE division IS '{"description": "Division", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN division.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN division.name IS '{"label": "Name", "description": "Division name", "summaryview": "true"}';
COMMENT ON COLUMN division.code IS '{"label": "Code", "description": "Division code", "summaryview": "true"}';
COMMENT ON COLUMN division.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN division.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN division.branchid IS '{"label": "Branch / Region ID", "description": "link to branch entity", "summaryview" : "false"}';
