CREATE TABLE eventstatus (
  id int4 NOT NULL PRIMARY KEY,
  status varchar(50),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON eventstatus TO ${anonuser};
GRANT SELECT ON eventstatus TO ${serviceuser};
GRANT SELECT ON eventstatus TO ${readonlyuser};


COMMENT ON TABLE eventstatus IS '{"description": "Event statuses", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN eventstatus.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN eventstatus.status IS '{"label": "Status", "description": "Status description for event", "summaryview": "true"}';
COMMENT ON COLUMN eventstatus.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN eventstatus.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';