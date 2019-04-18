CREATE TABLE tdacodes (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(80) NOT NULL,
  code varchar(20) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON tdacodes TO ${serviceuser};
GRANT SELECT ON tdacodes TO ${readonlyuser};

COMMENT ON TABLE tdacodes IS '{"description": "Governance bodies", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN tdacodes.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN tdacodes.name IS '{"label": "Name", "description": "Name of governing body", "summaryview": "true"}';
COMMENT ON COLUMN tdacodes.code IS '{"label": "Code", "description": "Governing body code", "summaryview": "true"}';
COMMENT ON COLUMN tdacodes.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN tdacodes.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';