-- CHANGE name=init-currency-table
CREATE TABLE currency (
  id INTEGER NOT NULL PRIMARY KEY,
  iso31661alpha2 CHARACTER VARYING(2) NOT NULL,
  currency CHARACTER VARYING(50) NOT NULL,
  currencycode CHARACTER VARYING(3) NOT NULL,
  countryid INTEGER NULL REFERENCES country(id),
  validfrom date,
  validto date
);


COMMENT ON TABLE currency IS '{"description": "Currencies", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN currency.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN currency.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN currency.currency IS '{"label": "Currency", "description": "Currency name", "summaryview": "true"}';
COMMENT ON COLUMN currency.currencycode IS '{"label": "Code", "description": "Currency code", "summaryview": "true"}';
COMMENT ON COLUMN currency.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset", "summaryview": "false", "linkedrecord": "country(id)"}';
COMMENT ON COLUMN currency.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN currency.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON currency TO ${anonuser};
GRANT SELECT ON currency TO ${serviceuser};
GRANT SELECT ON currency TO ${readonlyuser};