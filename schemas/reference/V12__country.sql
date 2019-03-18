-- CHANGE name=init-country-table
CREATE TABLE country (
  id CHARACTER VARYING(2) NOT NULL PRIMARY KEY,
  iso31661alpha3 CHARACTER VARYING(3) NOT NULL,
  name CHARACTER VARYING(40) NOT NULL,
  continent CHARACTER VARYING(2) NOT NULL,
  dial CHARACTER VARYING(20),
  iso31661numeric INTEGER NOT NULL
);

COMMENT ON TABLE country IS '{"description": "Countries", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN country.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN country.name IS '{"label": "Country name", "description": "Country name", "summaryview": "true"}';
COMMENT ON COLUMN country.iso31661alpha3 IS '{"label": "3 digit alpha code", "description": "Country 3 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN country.continent IS '{"label": "Continent", "description": "Countinent country is part of", "summaryview": "true"}';
COMMENT ON COLUMN country.dial IS '{"label": "Phone dial code", "description": "Country dailing prefix", "summaryview": "true"}';
COMMENT ON COLUMN country.iso31661numeric IS '{"label": "3 digit numeric code", "description": "Country numeric ISO code", "summaryview": "true"}';


-- GRANTs
GRANT SELECT ON country TO ${anonuser};
GRANT SELECT ON country TO ${serviceuser};
GRANT SELECT ON country TO ${readonlyuser};