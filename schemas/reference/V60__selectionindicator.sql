CREATE TABLE selectionindicator (
  id INTEGER NOT NULL PRIMARY KEY, 
  mode INT4 NOT NULL REFERENCES targetmode(id),
  indicator VARCHAR NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE selectionindicator IS '{"label": "Selection Indicator", "description": "A list of reasons for conducting a search on a particular vehicle.", "schemalastupdated": "15/07/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN selectionindicator.id IS '{"label": "Identifier", "description": "Database unique identity record.", "summaryview": "false"}';
COMMENT ON COLUMN selectionindicator.mode IS '{"label": "Mode of transport", "description": "The mode of transport used.", "summaryview": "true"}';
COMMENT ON COLUMN selectionindicator.indicator IS '{"label": "Indicator", "description": "Reason for selecting vehicle for search.", "summaryview": "true"}';
COMMENT ON COLUMN selectionindicator.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN selectionindicator.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON selectionindicator TO ${serviceuser};
GRANT SELECT ON selectionindicator TO ${readonlyuser};
