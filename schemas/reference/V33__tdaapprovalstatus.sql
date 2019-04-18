CREATE TABLE tdaapprovalstatus (
  id int4 NOT NULL PRIMARY KEY,
  status varchar(80) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON tdaapprovalstatus TO ${anonuser};
GRANT SELECT ON tdaapprovalstatus TO ${serviceuser};
GRANT SELECT ON tdaapprovalstatus TO ${readonlyuser};

COMMENT ON TABLE tdaapprovalstatus IS '{"description": "Governance approval status", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN tdaapprovalstatus.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN tdaapprovalstatus.status IS '{"label": "Status", "description": "Governance status of request", "summaryview": "true"}';
COMMENT ON COLUMN tdaapprovalstatus.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN tdaapprovalstatus.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';