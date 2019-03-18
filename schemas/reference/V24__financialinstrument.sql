CREATE TABLE financialinstrument (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(50) NOT NULL,
  description varchar(50)
);

-- GRANTs
GRANT SELECT ON financialinstrument TO ${anonuser};
GRANT SELECT ON financialinstrument TO ${serviceuser};
GRANT SELECT ON financialinstrument TO ${readonlyuser};


COMMENT ON TABLE financialinstrument IS '{"description": "Financial currency types", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN financialinstrument.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN financialinstrument.type IS '{"label": "Status", "description": "Type of currency", "summaryview": "true"}';
COMMENT ON COLUMN financialinstrument.description IS '{"label": "Status", "description": "Description of financial instrument", "summaryview": "true"}';