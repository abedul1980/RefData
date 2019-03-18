CREATE TABLE workarea (
  id int4 NOT NULL PRIMARY KEY,
  area varchar(40) NOT NULL
);

-- GRANTs
GRANT SELECT ON workarea TO ${anonuser};
GRANT SELECT ON workarea TO ${serviceuser};
GRANT SELECT ON workarea TO ${readonlyuser};

COMMENT ON TABLE workarea IS '{"description": "Working areas", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN workarea.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN workarea.area IS '{"label": "Area", "description": "Work area short description", "summaryview": "true"}';