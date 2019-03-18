CREATE TABLE employmenttypes (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(30) NOT NULL
);

-- GRANTs
GRANT SELECT ON employmenttypes TO ${anonuser};
GRANT SELECT ON employmenttypes TO ${serviceuser};
GRANT SELECT ON employmenttypes TO ${readonlyuser};


COMMENT ON TABLE employmenttypes IS '{"description": "Employment types", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN employmenttypes.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN employmenttypes.name IS '{"label": "Name", "description": "Employment / job name", "summaryview": "true"}';