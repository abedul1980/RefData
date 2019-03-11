-- CHANGE name=init-ethnicity-table
CREATE TABLE ethnicity (
  id integer NOT NULL PRIMARY KEY,
  ethnicity character varying(50) NOT NULL,
  subethnicity character varying(50) NOT NULL
);

COMMENT ON TABLE ethnicity IS '{"description": "Ethnicity breakdowns", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN ethnicity.id IS '{"description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN ethnicity.ethnicity IS '{"description": "Ethnicity high level descriptor", "summaryview": "true"}';
COMMENT ON COLUMN ethnicity.subethnicity IS '{"description": "Ethnicity low level descriptor", "summaryview": "true"}';

-- GRANTs
GRANT SELECT ON ethnicity TO ${anonuser};
GRANT SELECT ON ethnicity TO ${serviceuser};
GRANT SELECT ON ethnicity TO ${readonlyuser};