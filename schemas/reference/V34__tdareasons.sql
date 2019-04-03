CREATE TABLE tdareasons (
  id int4 NOT NULL PRIMARY KEY,
  reason varchar(80) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON tdareasons TO ${anonuser};
GRANT SELECT ON tdareasons TO ${serviceuser};
GRANT SELECT ON tdareasons TO ${readonlyuser};

COMMENT ON TABLE tdareasons IS '{"description": "Reasons for governance request", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN tdareasons.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN tdareasons.reason IS '{"label": "Reason", "description": "Reason for request", "summaryview": "true"}';
COMMENT ON COLUMN tdareasons.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN tdareasons.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';