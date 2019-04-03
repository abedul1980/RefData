-- CHANGE name=init-ethnicity-table
CREATE TABLE ethnicity (
  id integer NOT NULL PRIMARY KEY,
  ethnicity character varying(50) NOT NULL,
  subethnicity character varying(50) NOT NULL,
  validfrom date,
  validto date
);

COMMENT ON TABLE ethnicity IS '{"description": "Ethnicity breakdowns", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN ethnicity.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN ethnicity.ethnicity IS '{"label": "Ethnicity", "description": "Ethnicity high level descriptor", "summaryview": "true"}';
COMMENT ON COLUMN ethnicity.subethnicity IS '{"label": "Sub Ethnicity", "description": "Ethnicity low level descriptor", "summaryview": "true"}';
COMMENT ON COLUMN ethnicity.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN ethnicity.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON ethnicity TO ${anonuser};
GRANT SELECT ON ethnicity TO ${serviceuser};
GRANT SELECT ON ethnicity TO ${readonlyuser};