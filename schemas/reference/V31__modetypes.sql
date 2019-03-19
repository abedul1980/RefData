CREATE TABLE modetypes (
  id int4 NOT NULL PRIMARY KEY,
  class varchar(60) NOT NULL
);

-- GRANTs
GRANT SELECT ON modetypes TO ${anonuser};
GRANT SELECT ON modetypes TO ${serviceuser};
GRANT SELECT ON modetypes TO ${readonlyuser};

COMMENT ON TABLE modetypes IS '{"description": "Class of transport", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN modetypes.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN modetypes.class IS '{"label": "Class", "description": "Type of transport class", "summaryview": "true"}';