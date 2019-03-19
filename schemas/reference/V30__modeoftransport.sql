CREATE TABLE modeoftransport (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(30) NOT NULL
);

-- GRANTs
GRANT SELECT ON modeoftransport TO ${anonuser};
GRANT SELECT ON modeoftransport TO ${serviceuser};
GRANT SELECT ON modeoftransport TO ${readonlyuser};

COMMENT ON TABLE modeoftransport IS '{"description": "Modes of transport", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN modeoftransport.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN modeoftransport.type IS '{"label": "Type", "description": "Types of transport", "summaryview": "true"}';