CREATE TABLE eventtype (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(50)
);

-- GRANTs
GRANT SELECT ON eventtype TO ${serviceuser};
GRANT SELECT ON eventtype TO ${readonlyuser};


COMMENT ON TABLE eventtype IS '{"description": "Event types", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN eventtype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN eventtype.type IS '{"label": "Event types", "description": "Description of the different event types", "summaryview": "true"}';