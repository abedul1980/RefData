CREATE TABLE geographicregion (
  id int4 NOT NULL PRIMARY KEY,
  code varchar(3) NOT NULL,
  name varchar(100) NOT NULL,
  countryid varchar(10) NOT NULL REFERENCES country(id)
);

-- GRANTs
GRANT SELECT ON geographicregion TO ${anonuser};
GRANT SELECT ON geographicregion TO ${serviceuser};
GRANT SELECT ON geographicregion TO ${readonlyuser};

COMMENT ON TABLE geographicregion IS '{"description": "Geographic regions", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN geographicregion.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN geographicregion.code IS '{"label": "County code", "description": "International region code", "summaryview": "true"}';
COMMENT ON COLUMN geographicregion.name IS '{"label": "County name", "description": "County / region name", "summaryview": "true", "aliases": "region"}';