CREATE TABLE geographicregion (
  id int4 NOT NULL PRIMARY KEY,
  code varchar(3) NULL,
  name varchar(100) NOT NULL,
  iso31661alpha2 varchar(10) NULL,
  countryid INTEGER NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON geographicregion TO ${anonuser};
GRANT SELECT ON geographicregion TO ${serviceuser};
GRANT SELECT ON geographicregion TO ${readonlyuser};

COMMENT ON TABLE geographicregion IS '{"description": "Geographic regions", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN geographicregion.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN geographicregion.code IS '{"label": "County code", "description": "International region code", "summaryview": "true"}';
COMMENT ON COLUMN geographicregion.name IS '{"label": "County name", "description": "County / region name", "summaryview": "true", "aliases": "region"}';
COMMENT ON COLUMN geographicregion.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN geographicregion.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset", "summaryview": "false"}';
COMMENT ON COLUMN geographicregion.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN geographicregion.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
