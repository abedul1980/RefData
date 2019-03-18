CREATE TABLE relevantpowers (
  id int4 NOT NULL PRIMARY KEY,
  code varchar(40) NOT NULL,
  description text NOT NULL,
  url varchar(100),
  sop bool NOT NULL
);

-- GRANTs
GRANT SELECT ON relevantpowers TO ${serviceuser};
GRANT SELECT ON relevantpowers TO ${readonlyuser};

COMMENT ON TABLE relevantpowers IS '{"description": "Legal powers that can be used", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN relevantpowers.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN relevantpowers.code IS '{"label": "Legal code", "description": "Legal code number", "summaryview": "true"}';
COMMENT ON COLUMN relevantpowers.description IS '{"label": "Description", "description": "Short description of power", "summaryview": "true"}';
COMMENT ON COLUMN relevantpowers.url IS '{"label": "URL", "description": "Link to full power in legislation", "summaryview": "true"}';
COMMENT ON COLUMN relevantpowers.sop IS '{"label": "sop", "description": "Valid power for search of person", "summaryview": "false"}';