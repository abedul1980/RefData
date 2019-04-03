CREATE TABLE modeoftransport (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(30) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON modeoftransport TO ${anonuser};
GRANT SELECT ON modeoftransport TO ${serviceuser};
GRANT SELECT ON modeoftransport TO ${readonlyuser};

COMMENT ON TABLE modeoftransport IS '{"description": "Modes of transport", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN modeoftransport.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN modeoftransport.type IS '{"label": "Type", "description": "Types of transport", "summaryview": "true"}';
COMMENT ON COLUMN modeoftransport.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN modeoftransport.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';