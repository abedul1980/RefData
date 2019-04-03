CREATE TABLE bffunctiontypes (
  id uuid NOT NULL PRIMARY KEY,
  bffunction varchar(20)  NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON bffunctiontypes TO ${anonuser};
GRANT SELECT ON bffunctiontypes TO ${serviceuser};
GRANT SELECT ON bffunctiontypes TO ${readonlyuser};

COMMENT ON TABLE bffunctiontypes IS '{"description": "Border functions type clarifications", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN bffunctiontypes.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN bffunctiontypes.bffunction IS '{"label": "Function", "description": "Border crossing type", "summaryview": "true"}';
COMMENT ON COLUMN bffunctiontypes.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN bffunctiontypes.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';